//
//  Character.swift
//  LeagueOfLegendsWeek6
//
//  Created by Matthew Hill on 3/11/23.
//

import Foundation

struct TopLevelCharacterDict: Codable {
    let type: String
    let format: String
    let version: String
    let data: Character
}

struct Character: Codable {
    let chapions: CharacterDetails
}

struct CharacterDetails: Codable {
    let version: String
    let id: String
    let key: String
    let name: String
    let titlte: String
    let blurb: String
    let image: ImagePath
    let stats: Attributes
}

struct ImagePath: Codable {
    let full: String
}

struct Attributes: Codable {
    let hp: Int
    let movespeed: Int
    let attackrange: Int
    let attackdamage: Int
    let attackspeed: Int
}

