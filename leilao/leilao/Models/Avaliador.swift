//
//  Avaliador.swift
//  leilao
//
//  Created by Ana Thayna Franca on 17/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

class Avaliador {
    
    private var maiorDeTodos = Double.leastNonzeroMagnitude
    private var menorDeTodos = Double.greatestFiniteMagnitude
    private var maiores:[Lance] = []
    
    func avalia(leilao: Leilao) {
        guard let lances = leilao.lances else { return }
        
        for lance in lances {
            if lance.valor > maiorDeTodos {
                maiorDeTodos = lance.valor
            }
            if lance.valor < menorDeTodos {
                menorDeTodos = lance.valor
            }
        }
        pegaOsMaioresLancesNoLeilao(leilao)
    }
    
    func maiorLance() -> Double {
        return maiorDeTodos
    }
    
    func menorLance() -> Double {
        return menorDeTodos
    }
    
    func tresMaiores() -> [Lance] {
        return maiores
    }
    
    private func pegaOsMaioresLancesNoLeilao(_ leilao:Leilao) {
        guard let lances = leilao.lances else { return }
        maiores = lances.sorted(by: { (lance1, lance2) -> Bool in
            return lance1.valor > lance2.valor
        })
        
        let maioresLances = maiores.prefix(3)
        maiores = Array(maioresLances)
    }
    
}
