//
//  Card.swift
//  BolsaInforma
//
//  Created by found on 22/08/24.
//

import Foundation

struct Card: Identifiable{
    
    var id = UUID()
    var arg1: String //Nome
    var arg2: String //Tipo ou Área de Atuação
    var arg3: String //Prazo
    var isSalvo: Bool = false
    
}
