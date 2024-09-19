//
//  FilterButtonView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterButtonView: View {
    
    @ObservedObject var filterButton: FilterButton
//teste de merge Matheus
    
    var body: some View {
        @State var textColor = getTextColor(isSelected: filterButton.isSelected)
        @State var rectColor = getRectColor(isSelected: filterButton.isSelected)
      
            ZStack{
                if (filterButton.isSelected){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.tinta)
                        .frame(height: 27)
                    
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.white)
                        .frame(height: 27)
                        .padding()
                    
                } else{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .strokeBorder(Color.tinta)
                        .frame(height: 27)
                    
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.black)
                        .frame(height: 27)
                        .padding(.horizontal)
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
//    func getFontWeight(isSelected: Bool) {
//        if (isSelected){
//
//        }
//    }

}

#Preview {
    FilterButtonView(filterButton: FilterButton(text: "Filtro", isSelected: false))
}
