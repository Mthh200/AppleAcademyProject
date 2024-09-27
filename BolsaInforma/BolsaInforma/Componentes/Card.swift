//
//  Card.swift
//  BolsaInforma
//
//  Created by found on 22/08/24.
//

import Foundation
import Combine

class Card: Identifiable, ObservableObject{
    
    var id = UUID()
    var cardName: String
    var prazo: String
    @Published var isSalvo: Bool = false
 
    init(cardName: String, prazo: String, isSalvo: Bool) {
        self.cardName = cardName
        self.prazo = prazo
        self.isSalvo = isSalvo
    }
}
