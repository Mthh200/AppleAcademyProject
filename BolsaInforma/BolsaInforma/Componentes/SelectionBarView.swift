//
//  SelectionBarView.swift
//  BolsaInforma
//
//  Created by found on 06/09/24.
//

import SwiftUI

struct SelectionBarView: View {
    @State var filterButtons: Array<FilterButton>
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows:
                        [GridItem(.adaptive(minimum: 300))]){
                ForEach(filterButtons){ button in
                    FilterButtonView(filterButton: button)
                        .onTapGesture {
                            for element in filterButtons {
                                element.setIsSelect(isSelected: false)
                            }
                            
                            button.setIsSelect(isSelected: true)
                        }
                }
            }
        }
        .frame(height: 47)

    }
}

#Preview {
    SelectionBarView(filterButtons: [
        FilterButton(text: "Tudo", isSelected: true),
        FilterButton(text: "Pesquisa"),
        FilterButton(text: "Extensão"),
        FilterButton(text: "Área de Atuação"),
        FilterButton(text: "Escolaridade")
    ])
}
