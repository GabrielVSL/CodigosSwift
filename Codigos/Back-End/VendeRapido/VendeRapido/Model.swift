//
//  Model.swift
//  VendeRapido
//
//  Created by Turma01-Backup on 27/03/25.
//

import Foundation

struct Post: Codable, Hashable {
    let nome: String?
    let carro: String?
    let anoCarro: String?
    let cidade: String?
    let carroImage: String?
    let pessoaImage: String?
}
