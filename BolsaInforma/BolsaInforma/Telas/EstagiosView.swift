//
//  EstagiosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct EstagiosView: View {
    
    @State var searchText = ""
    
    var dados = Dados()
    
    var cardsEstagios = [
        Card(arg1: "Aprenda Certo", arg2: "Computação", arg3: "Nível Superior e Médio", isSalvo: true),
        Card(arg1: "Administração de Obras", arg2: "Construção Civil", arg3: "Nível Superior e Médio", isSalvo: false)
    ]
    
    var filteredEstagios: [Card] {
        cardsEstagios.filter { card in
            searchText.isEmpty || card.arg1.localizedCaseInsensitiveContains(searchText)
        }
    }
    
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
                        ForEach(filteredEstagios){ card in
                            if let textos = dados.estagios[card.arg1] {
                                NavigationLink(destination: VagaView(textos: textos, title: card.arg1)) {
                                    CardView(card: card)
                                }
                            }
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
