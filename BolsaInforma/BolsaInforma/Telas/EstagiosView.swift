//
//  EstagiosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct EstagiosView: View {
    
    @State var searchText = ""
    var cardsEstagios = [
        Card(arg1: "Aprenda Certo", arg2: "Computação", arg3: "Nível Superior e Médio", isSalvo: true),
        Card(arg1: "Administração de Obras", arg2: "Construção Civil", arg3: "Nível Superior e Médio", isSalvo: false)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                ScrollView{
                    VStack {
                        FilterView(filterButtons: [
                            FilterButton(text: "Tudo", isSelected: true),
                            FilterButton(text: "Área de Atuação"),
                            FilterButton(text: "Escolaridade")
                        ]
)
                        ForEach(cardsEstagios){ card in
                            CardView(card: card)
                        }
                    }
                }
                    .padding()
                    
                    
                }
                .searchable(text: $searchText)
                .navigationTitle("Estágios")
                .toolbarBackground(.visible)
                
                }
            }
            
        }
        
    



#Preview {
    EstagiosView()
}
