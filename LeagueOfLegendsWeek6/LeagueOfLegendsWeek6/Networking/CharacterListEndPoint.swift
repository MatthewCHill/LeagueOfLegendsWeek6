//
//  CharacterListEndPoint.swift
//  LeagueOfLegendsWeek6
//
//  Created by Matthew Hill on 3/13/23.
//

import Foundation

enum CharacterListEndpoint {
    
    static let baseURL = URL(string: "http://ddragon.leagueoflegends.com/cdn/13.5.1/data/en_US/")
    
    case chapion
    
    var full: URL? {
        guard var url = Self.baseURL,
              var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true) else { return nil }
        switch self {
            
        case .chapion:
            urlComponents.path.append("champion.json")
        }
        return urlComponents.url
    }
}
