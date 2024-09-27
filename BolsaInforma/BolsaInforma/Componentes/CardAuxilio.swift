//
//  CardAuxilio.swift
//  BolsaInforma
//
//  Created by found on 26/09/24.
//

import Foundation

class CardAuxilio: Card {
    var image: String
    
    init(cardName: String, image: String, prazo: String, isSalvo: Bool) {
        switch cardName{
        case "Auxílio Óculos":
            self.image = "eyeglasses"
        case "Auxílio Transporte":
            self.image = "car.fill"
        case "Auxílio Formação":
            self.image = "Auxílio Formação"
        case "Auxílio Moradia":
            self.image = "house"
        default:
            self.image = "hjb"
        }
        super.init(cardName: cardName, prazo: prazo, isSalvo: isSalvo)
        
        
    }
}
