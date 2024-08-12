//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Chris Min on 12/08/2024.
//

import Foundation


/// Object that represents single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: Set<String>
    
    /// Query Parameters for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed URL for the API Request in String format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed and Constructed URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP Method
    public let httpMethod = "GET"
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponents: Collection of Path Components
    ///   - queryParameters: Collection of Query Parameters
    init(endpoint: RMEndpoint,
         pathComponents: Set<String> = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
