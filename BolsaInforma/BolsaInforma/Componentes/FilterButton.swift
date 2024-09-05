//
//  FilterButton.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI
import Combine

class FilterButton: Identifiable, ObservableObject {
    
    let id = UUID()
    var text: String
    @Published var isSelected: Bool = false
    
    init(text: String, isSelected: Bool = false) {
            self.text = text
            self.isSelected = isSelected
        }
    
    func setIsSelect(isSelected:Bool) -> Void {
        self.isSelected = isSelected
    }
}
