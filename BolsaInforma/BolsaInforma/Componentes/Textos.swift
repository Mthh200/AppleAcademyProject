//
//  Textos.swift
//  BolsaInforma
//
//  Created by found on 13/09/24.
//
import Foundation
struct Textos: Identifiable {
    
    let id = UUID()
    let icon = "pencil.circle"
    let nome: String
    let textos: Array<Texto>
    
}
