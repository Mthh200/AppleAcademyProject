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
    var arg1: String  //Nome
    var arg2: String //Tipo ou Área de Atuação
    var arg3: String //Prazo
    @Published var isSalvo: Bool = false
 
    init(arg1: String, arg2: String, arg3: String, isSalvo: Bool) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.isSalvo = isSalvo
    }
}
