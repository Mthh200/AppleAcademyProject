//
//  FilterButton.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterButton: Identifiable {
    
    var text: String
    @State var isSelected: Bool = false
    var id = UUID()
}
