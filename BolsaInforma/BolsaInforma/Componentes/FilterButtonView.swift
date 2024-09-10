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
    
    
    
    var body: some View {
        @State var textColor = getTextColor(isSelected: filterButton.isSelected)
        @State var rectColor = getRectColor(isSelected: filterButton.isSelected)
//        Button{
//            if (filterButton.isSelected){
//                textColor = Color.white
//                rectColor = Color.tinta
//            }
//        } label: {
            ZStack{
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(rectColor)
                    .strokeBorder(Color(.tinta))
                    .frame(/*width: 77, */height: 27)
                
                    .aspectRatio(contentMode: .fill)
                Text(filterButton.text)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(textColor)
                    .frame(/*width: 60, */height: 27)
                    .padding()
                
//            }
        }
        
    }
    

}

#Preview {
    FilterButtonView(filterButton: FilterButton(text: "Filtro", isSelected: false))
}
