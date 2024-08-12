//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Chris Min on 12/08/2024.
//

import Foundation


struct RMEpisode {
    let id: Int
    let name: String
    let airData: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, episode, characters, url, created
        case air_data = "airData"
    }
}


