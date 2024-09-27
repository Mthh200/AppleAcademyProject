//
//  FilterButtonView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct SectionButtonView: View {
    
    @ObservedObject var filterButton: FilterButton
    
    var body: some View {
        
            ZStack{
                if (filterButton.isSelected){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.tinta)
                        .frame(width: 90, height: 30)
                        .aspectRatio(contentMode: .fill)
                    Text(filterButton.text)
                        .font(.system(size: 16))
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
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.black)
                        .frame(width: 90, height: 30)
                }
                
                
        }
        
    }
}

#Preview {
    SectionButtonView(filterButton: FilterButton(text: "Bolsas", isSelected: false))
}
