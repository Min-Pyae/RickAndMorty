//
//  RMService.swift
//  RickAndMorty
//
//  Created by Chris Min on 12/08/2024.
//

import Foundation

/// Primary API Service Object to get Rick and Morty data
final class RMService {
    
    /// Shared Singleton Instance
    static let shared = RMService()
    
    /// Privatized Constructor
    private init() { }

    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with Data or Error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void) {
        
    }
}
