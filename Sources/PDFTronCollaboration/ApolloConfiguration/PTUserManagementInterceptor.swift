//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Apollo

class PTUserManagementInterceptor: ApolloInterceptor {

    enum UserError: Error {
        case noUserLoggedIn
    }

    public var token: String?

    /// Helper function to add the token then move on to the next step
    private func addTokenAndProceed<Operation: GraphQLOperation>(
        _ token: String,
        to request: HTTPRequest<Operation>,
        chain: RequestChain,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {

        request.addHeader(name: "Authorization", value: "Bearer \(token)")
        chain.proceedAsync(request: request,
                           response: response,
                           completion: completion)
    }

    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            if let token = token {
                self.addTokenAndProceed(token,
                                        to: request,
                                        chain: chain,
                                        response: response,
                                        completion: completion)
            } else {
                // No token found
                chain.proceedAsync(request: request,
                                   response: response,
                                   completion: completion)
            }
    }
}


