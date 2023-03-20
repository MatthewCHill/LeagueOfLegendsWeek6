//
//  LeagueOfLegendsService.swift
//  LeagueOfLegendsWeek6
//
//  Created by Matthew Hill on 3/13/23.
//

import Foundation

protocol LeagueOfLegendsServicable {
    
}

struct LeagueOfLegendsService {
    
    let service = APIService()
    
    func fetchCharacterList(with endpoint: CharacterListEndpoint, completion: @escaping (Result<Character, NetworkError>) -> Void) {
        
        guard let finalURL = endpoint.full else {return}
        let request = URLRequest(url: finalURL)
        service.perform(request) { result in
            switch result {
                
            case .success(let data):
                do{
                    let topLevel = try JSONDecoder().decode(TopLevelCharacterDict.self, from: data)
                    let character = topLevel.data
                    completion(.success(character))
                } catch {
                    completion(.failure(.thrownError(error)))
                    print(error)
                }
            case .failure(let error):
                completion(.failure(.thrownError(error)))
            }
        }
    }
}

