//
//  FilterView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterView: View {
    
    @State var filterButtons: Array<FilterButton>
    @State var showFilters: Bool = false
    
    var body: some View {
        VStack (alignment: .trailing){
            HStack{
                Spacer()
                Button{
                    withAnimation(.easeInOut(duration: 0.3)) {
                        showFilters.toggle()
                    }
                } label: {
                    Text("Filtros")
                        .font(.system(size: 15))
                        .underline()
                        .foregroundStyle(.tinta)
                }
            }
            if showFilters {
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
                                    
                                    withAnimation(.easeInOut(duration: 0.8)) {
                                        showFilters.toggle()
                                    }
                                }
                        }
                    }
                }
                .transition(.move(edge: .trailing))
            }
        }
        .frame(height: showFilters ? 65 : 18)
    }

        
}

#Preview {
    FilterView(filterButtons: [
        FilterButton(text: "Tudo", isSelected: true),
        FilterButton(text: "Pesquisa"),
        FilterButton(text: "Extensão"),
        FilterButton(text: "Área de Atuação"),
        FilterButton(text: "Escolaridade")
    ])
}
