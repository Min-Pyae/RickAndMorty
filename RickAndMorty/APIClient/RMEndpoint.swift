//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Chris Min on 12/08/2024.
//

import Foundation

/// Represents Unique API Endpoints
@frozen enum RMEndpoint: String {
    
    /// Endpoint to get Character Info
    case character
    
    /// Endpoint to get Location Info
    case location
    
    /// Endpoint to get Episode Info
    case episode
}
