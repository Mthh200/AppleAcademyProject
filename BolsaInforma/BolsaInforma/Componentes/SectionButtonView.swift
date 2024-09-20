//
//  FilterButtonView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct SectionButtonView: View {
    
    @ObservedObject var filterButton: FilterButton
//teste de merge Matheus
    
    var body: some View {
        
            ZStack{
                if (filterButton.isSelected){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.tinta)
                        .frame(width: 90, height: 30)
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(width: 90, height: 30)
                    
                } else{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .strokeBorder(Color(.tinta))
                        .frame(width: 90, height: 30)
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.black)
                        .frame(width: 90, height: 30)
                }
                
                
        }
        
    }
    
    func getRectColor(isSelected: Bool) -> Color {
        if (isSelected) {
            Color.tinta
        } else {
            Color.white
        }
    }
    func getTextColor(isSelected: Bool) -> Color {
        if (isSelected) {
            Color.white
        } else {
            Color.black
        }
    }
}

#Preview {
    SectionButtonView(filterButton: FilterButton(text: "Bolsas", isSelected: false))
}
