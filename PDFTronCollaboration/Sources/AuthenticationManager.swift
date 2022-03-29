//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Tools
import Apollo

protocol AuthenticationManagerDelegate
{
    func authenticationManagerErrorOccurred(error:Error)
}

class AuthenticationManager
{
    var delegate: AuthenticationManagerDelegate?

    func loginWithPassword(email:String, password:String, apolloClient: ApolloClient, completionHandler: @escaping (LoginMutation.Data.Login?) -> ())
    {
        apolloClient.perform(mutation: LoginMutation(email: email, password: password, token: nil)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.delegate?.authenticationManagerErrorOccurred(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    completionHandler(data.login)
                }
            case .failure(let error):
                self.delegate?.authenticationManagerErrorOccurred(error: error)
                completionHandler(nil)
            }
        }
    }

    func loginAnonymously(username:String, apolloClient: ApolloClient, completionHandler: @escaping (LoginAnonymousMutation.Data.LoginAnonymou?) -> ())
    {
        apolloClient.perform(mutation: LoginAnonymousMutation(userName: username)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.delegate?.authenticationManagerErrorOccurred(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    completionHandler(data.loginAnonymous)
                }
            case .failure(let error):
                self.delegate?.authenticationManagerErrorOccurred(error: error)
                completionHandler(nil)
            }
        }
    }

    func loginWithToken(token:String, withClient apolloClient: ApolloClient, completionHandler: @escaping (LoginMutation.Data.Login?) -> ())
    {
        apolloClient.perform(mutation: LoginMutation(email: nil, password: nil, token: token)) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.delegate?.authenticationManagerErrorOccurred(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    completionHandler(data.login)
                }
            case .failure(let error):
                completionHandler(nil)
                self.delegate?.authenticationManagerErrorOccurred(error: error)
            }
        }
    }

    func getUserSession(apolloClient: ApolloClient, completionHandler: @escaping (GetSessionQuery.Data.Session?) -> ())
    {
        apolloClient.fetch(query: GetSessionQuery()) { [weak self] result in
            guard let self = self else {
                completionHandler(nil)
                return
            }
            switch result{
            case .success(let graphQLResult):
                if let errors = graphQLResult.errors,
                   errors.count > 0 {
                    for error in errors {
                        self.delegate?.authenticationManagerErrorOccurred(error: error)
                    }
                    completionHandler(nil)
                    return
                }
                if let data = graphQLResult.data {
                    completionHandler(data.session)
                }
            case .failure(let error):
                completionHandler(nil)
                self.delegate?.authenticationManagerErrorOccurred(error: error)
            }
        }
    }
}

// MARK: Utility
extension AuthenticationManager
{
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
