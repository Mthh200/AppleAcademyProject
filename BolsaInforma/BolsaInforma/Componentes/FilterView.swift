//
//  FilterView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterView: View {
    
    @State var filterButtons = [
        FilterButton(text: "Tudo", isSelected: true),
        FilterButton(text: "Pesquisa"),
        FilterButton(text: "Extensão"),
        FilterButton(text: "Área de Atuação"),
        FilterButton(text: "Área de Atuação")
    ]
    
    var body: some View {
        VStack (alignment: .trailing){
            HStack{
                Spacer()
                Text("Filtros")
                    .font(.system(size: 15))
                    .underline()
                    .foregroundStyle(.tinta)
                
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                
                    ForEach(filterButtons){ button in
//                        FilterButtonView(filterButton: button)
//                            .onTapGesture {
//                                for element in filterButtons {
//                                    element.setIsSelect(isSelected: false)
//                                }
//                                button.setIsSelect(isSelected: true)
//
//                            }
                        Button{
                            for element in filterButtons {
                                element.setIsSelect(isSelected: false)
                            }
                            button.setIsSelect(isSelected: true)
                        }
                        label: {
                            FilterButtonView(filterButton: button)
                        }
                    }
                }
                    Spacer()
                }
                
            }
            .frame(height: 60)
        }

        
}

#Preview {
    FilterView()
}
