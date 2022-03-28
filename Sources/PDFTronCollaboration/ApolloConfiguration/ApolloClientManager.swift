//---------------------------------------------------------------------------------------
// Copyright (c) 2001-2020 by PDFTron Systems Inc. All Rights Reserved.
// Consult legal.txt regarding legal and license information.
//---------------------------------------------------------------------------------------

import Foundation
import Apollo
import ApolloWebSocket

class ApolloClientManager
{
    class func configureApolloClient(endpointURL:URL, subscriptionURL: URL, authorizationToken:String?, completionHandler: @escaping (ApolloClient) -> ())
    {
        // The cache is necessary to set up the store, which we're going to hand to the provider
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)

        let client = URLSessionClient()

        let userManagementInterceptor = PTUserManagementInterceptor()
        if let authorizationToken = authorizationToken {
            userManagementInterceptor.token = authorizationToken
        }
        let provider = PTNetworkInterceptorProvider(store: store, client: client, userManagementInterceptor: userManagementInterceptor)
    
        let webSocketTransport: WebSocketTransport = {
            let request = URLRequest(url: subscriptionURL)
            let webSocketClient = WebSocket(request: request, protocol: .graphql_ws)
            var authPayload = GraphQLMap()
            if let authorizationToken = authorizationToken {
                authPayload = ["authToken": authorizationToken]
            }
            return WebSocketTransport(websocket: webSocketClient, connectingPayload: authPayload)
        }()
    
        /// An HTTP transport to use for queries and mutations
        let normalTransport: RequestChainNetworkTransport = {
            return RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: endpointURL)
        }()
        
        /// A split network transport to allow the use of both of the above
        /// transports through a single `NetworkTransport` instance.
        let splitNetworkTransport = SplitNetworkTransport(
            uploadingNetworkTransport: normalTransport,
            webSocketNetworkTransport: webSocketTransport
        )
        completionHandler(ApolloClient(networkTransport: splitNetworkTransport, store: store))
    }
}
