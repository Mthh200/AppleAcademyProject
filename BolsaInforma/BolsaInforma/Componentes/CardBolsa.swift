//
//  CardBolsa.swift
//  BolsaInforma
//
//  Created by found on 26/09/24.
//

import Foundation

class CardBolsa: Card {
    var tipo: String
    var areaDeAtuacao: String
    
    
    
    init(cardName: String, tipo: String, prazo: String, areadeAtuacao: String, isSalvo: Bool) {
        self.tipo = tipo
        self.areaDeAtuacao = areadeAtuacao
        super.init(cardName: cardName, prazo: prazo, isSalvo: isSalvo)
        
    }
}
