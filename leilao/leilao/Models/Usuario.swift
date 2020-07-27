//
//  Usuario.swift
//  leilao
//
//  Created by Ana Thayna Franca on 17/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

class Usuario {
    
    let id:Int?
    let nome:String
    
    init(id: Int? = nil, nome: String) {
        self.id = id
        self.nome = nome
    }
}
