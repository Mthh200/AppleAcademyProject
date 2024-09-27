//
//  FilterButtonView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterButtonView: View {
    
    @ObservedObject var filterButton: FilterButton
    
    var body: some View {
//        @State var textColor = getTextColor(isSelected: filterButton.isSelected)
//        @State var rectColor = getRectColor(isSelected: filterButton.isSelected)
        
      
            ZStack{
                if (filterButton.isSelected){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.tinta)
                        .frame(height: 27)
                        .aspectRatio(contentMode: .fill)
                    HStack{
                        Text(filterButton.text)
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundStyle(Color.white)
                            .frame(height: 27)
                            .padding()
//                        Image(systemName: "xmark.fill")
//                            .foregroundStyle(Color.red)
//                            .font(.system(size: 10))
                    }
                } else{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .strokeBorder(Color.tinta)
                        .frame(height: 27)
                    
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.black)
                        .frame(height: 27)
                        .padding(.horizontal)
                }
                
        }
        
    }
    
//    func getRectColor(isSelected: Bool) -> Color {
//        if (isSelected) {
//            Color.tinta
//        } else {
//            Color.white
//        }
//    }
//    func getTextColor(isSelected: Bool) -> Color {
//        if (isSelected) {
//            Color.white
//        } else {
//            Color.black
//        }
//    }

}

#Preview {
    FilterButtonView(filterButton: FilterButton(text: "Filtro", isSelected: false))
}
