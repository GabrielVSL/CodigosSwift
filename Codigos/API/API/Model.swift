//
//  Model.swift
//  API
//
//  Created by Turma01-Backup on 26/03/25.
//

import Foundation

struct HaPo: Codable, Identifiable {
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patrons: String?
    let hogwartsStuddent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternative_actors: [String]?
    let alive: Bool?
    let image: String?
}

struct Wand: Codable {
    let wood: String?
    let core: String?
    let lenth: Double?
}
