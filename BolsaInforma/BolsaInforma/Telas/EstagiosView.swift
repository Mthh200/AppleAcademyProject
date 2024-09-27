//
//  EstagiosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct EstagiosView: View {
    
    let dados = Dados().dados
    
    @State var searchText = ""
    var cardsEstagios = [
        CardEstagio(cardName: "Aprenda Certo", areaDeAtuacao: "Computação", prazo: "Nível Superior e Médio", isSalvo: true),
        CardEstagio(cardName: "Administração de Obras", areaDeAtuacao: "Construção Civil", prazo: "Nível Superior e Médio", isSalvo: false)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                ScrollView {
                    VStack {
                        Spacer()
                        FilterView(filterButtons: [
                            FilterButton(text: "Tudo", isSelected: true),
                            FilterButton(text: "Área de Atuação"),
                            FilterButton(text: "Escolaridade")
                        ], selectedFilter: FilterButton(text: "Tudo"))
                        
                        ForEach(cardsEstagios){ card in
                            if var textos = dados[card.cardName] {
                                ZStack {
                                    NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                        CardEstagioView(card: card)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
                    
            }
            .border(Color(.background), width: 0.5)
            .searchable(text: $searchText)
            .navigationTitle("Estágios")
            Spacer()
        }
    }
    
}

#Preview {
    EstagiosView()
        .tint(.tinta)
}
