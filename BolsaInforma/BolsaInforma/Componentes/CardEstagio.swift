//
//  CardBolsa.swift
//  BolsaInforma
//
//  Created by found on 26/09/24.
//

import Foundation

class CardEstagio: Card {
    var areaDeAtuacao: String
    
    init(cardName: String, areaDeAtuacao: String, prazo: String, isSalvo: Bool) {
        self.areaDeAtuacao = areaDeAtuacao
        super.init(cardName: cardName, prazo: prazo, isSalvo: isSalvo)
        
    }
}
