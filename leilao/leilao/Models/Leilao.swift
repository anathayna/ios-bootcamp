//
//  Leilao.swift
//  leilao
//
//  Created by Ana Thayna Franca on 17/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

class Leilao {
    
    let descricao:String
    let imagem:String?
    var lances:[Lance]?
    
    init(descricao:String, imagem:String? = nil, lances:[Lance] = []) {
        self.descricao = descricao
        self.imagem = imagem
        self.lances = lances
    }
    
    func propoe(lance:Lance) {
        lances?.append(lance)
    }
}
