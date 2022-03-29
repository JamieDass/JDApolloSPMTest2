//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation

@objc public extension CollabClient
{
    // MARK: Login Actions

    // This method only available in Objective-C as a workaround for strange naming convention
    /// Logs in a user with an email and password.
    ///
    /// - Parameters:
    ///   - email: The user's email address.
    ///   - password: The user's password.
    ///   - completionHandler: The completion handler. A closure which is called with a `User` object if the login is successful.
    @available(swift, obsoleted: 1.0)
    @objc(loginWithPassword:email:completionHandler:) func loginWithPassword(password:String, email:String, completionHandler: @escaping (User?) -> ())
    {
        loginWithPassword(email: email, password: password, completionHandler: completionHandler)
    }

    /// Logs in a user with an email and password.
    ///
    /// - Parameters:
    ///   - email: The user's email address.
    ///   - password: The user's password.
    ///   - completionHandler: The completion handler. A closure which is called with a `User` object if the login is successful.
    @nonobjc func loginWithPassword(email:String, password:String, completionHandler: @escaping (User?) -> ())
    {
        guard let apolloClient = apolloClient,
              let authenticationManager = authenticationManager else {
                  completionHandler(nil)
                  return
              }
        authenticationManager.loginWithPassword(email: email, password: password, apolloClient: apolloClient) {  [weak self] login in
            guard let self = self,
                  let login = login,
                  let loginToken = login.token,
                  let loginUser = login.user else {
                completionHandler(nil)
                return
            }
            let user = self.userFromServerEntity(serverUser: loginUser)
            self.user = user
            self.userLoggedIn()
            self.configureApolloClient(endpointURL: self.endpointURL, subscriptionURL: self.subscriptionURL, authorizationToken: loginToken) { client in
                self.apolloClient = client
                completionHandler(user)
            }
        }
    }
    
    /// Logs in a user anonymously.
    ///
    /// - Parameters:
    ///   - username: The username for the user.
    ///   - completionHandler: The completion handler. A closure which is called with a `User` object if the login is successful.
    func loginAnonymously(username: String, completionHandler: @escaping (User?) -> ())
    {
        guard let apolloClient = apolloClient,
              let authenticationManager = authenticationManager else {
                  completionHandler(nil)
                  return
              }
        authenticationManager.loginAnonymously(username: username, apolloClient: apolloClient) { [weak self] login in
            guard let self = self,
                  let login = login,
                  let loginToken = login.token,
                  let loginUser = login.user else {
                      completionHandler(nil)
                      return
                  }
            let user = self.userFromServerEntity(serverUser: loginUser)
            self.user = user
            self.userLoggedIn()
            self.configureApolloClient(endpointURL: self.endpointURL, subscriptionURL: self.subscriptionURL, authorizationToken: loginToken) { client in
                self.apolloClient = client
                completionHandler(user)
            }
        }
    }

    /// Logs in a user with an authentication token.
    ///
    /// - Parameters:
    ///   - token: The authentication token.
    ///   - completionHandler: The completion handler. A closure which is called with a `User` object if the login is successful.
    @objc(loginWithToken:completionHandler:) func loginWithToken(token: String, completionHandler: @escaping (User?) -> ())
    {
        guard let apolloClient = apolloClient,
              let authenticationManager = authenticationManager else {
                  completionHandler(nil)
                  return
              }
        authenticationManager.loginWithToken(token: token, withClient: apolloClient) { [weak self] login in
            guard let self = self,
                  let login = login,
                  let loginToken = login.token,
                  let loginUser = login.user else {
                      completionHandler(nil)
                      return
                  }
            let user = self.userFromServerEntity(serverUser: loginUser)
            self.user = user
            self.userLoggedIn()
            self.configureApolloClient(endpointURL: self.endpointURL, subscriptionURL: self.subscriptionURL, authorizationToken: loginToken) { client in
                self.apolloClient = client
                completionHandler(user)
            }
        }
    }

    /// Gets a user's session.
    ///
    /// - Parameters:
    ///   - completionHandler: The completion handler. A closure which is called with a `User` object if the user session exists.
    func getUserSession(completionHandler: @escaping (User?) -> ())
    {
        guard let apolloClient = apolloClient,
              let authenticationManager = authenticationManager else {
                  completionHandler(nil)
                  return
              }
        authenticationManager.getUserSession(apolloClient: apolloClient) { [weak self] session in
            guard let self = self,
                  let session = session,
                  let loginToken = session.token else {
                      completionHandler(nil)
                      return
                  }
            self.loginWithToken(token: loginToken) { user in
                completionHandler(user)
            }
        }
    }
}

// MARK: Internal
extension CollabClient
{
    // MARK: User logged in, add subscription
    func userLoggedIn()
    {
        self.addSubscriptionForServerEvents()
    }

    // MARK: GraphQL Type Conversion Helpers
    func userFromServerEntity(serverUser: LoginAnonymousMutation.Data.LoginAnonymou.User) -> User
    {
        let user = User()
        user.userName = serverUser.userName
        user.id = serverUser.id
        user.type = serverUser.type == .standard ? .standard : .anonymous
        user.email = serverUser.email
        return user
    }

    func userFromServerEntity(serverUser: LoginMutation.Data.Login.User) -> User
    {
        let user = User()
        user.userName = serverUser.userName
        user.id = serverUser.id
        user.type = serverUser.type == .standard ? .standard : .anonymous
        user.email = serverUser.email
        return user
    }
}
