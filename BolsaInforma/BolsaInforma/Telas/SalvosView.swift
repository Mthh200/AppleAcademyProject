//
//  SalvosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct SalvosView: View {
    
    
    @State var vagasView = VagasView()
    @State var estagiosView = EstagiosView()
    @State var selectionado: Int = 1
    @State var textos: [Textos] = []
    
    let dados = Dados().dados
    
    var body: some View {
        
        var cardsBolsasSalvas = vagasView.cardsBolsas.filter { card in
            if (card.isSalvo == true) {
                return true
            } else {
                return false
            }
        }
        var cardsAuxiliosSalvos = vagasView.cardsAuxilios.filter { card in
            if (card.isSalvo == true) {
                return true
            } else {
                return false
            }
        }
        var cardsEstagiosSalvos = estagiosView.cardsEstagios.filter { card in
            if (card.isSalvo == true) {
                return true
            } else {
                return false
            }
        }
        
        NavigationStack {
            ZStack {
                Color.fundo
                VStack{
                    HStack{
                        Button {
                            selectionado = 1
                        } label: {
                            SectionButtonView(filterButton: FilterButton(text: "Bolsas", isSelected: selectionado == 1))
                        }
                        Button {
                            selectionado = 2
                        } label: {
                            SectionButtonView(filterButton: FilterButton(text: "Auxílios", isSelected: selectionado == 2))
                        }
                        Button {
                            selectionado = 3
                        } label: {
                            SectionButtonView(filterButton: FilterButton(text: "Estágios", isSelected: selectionado == 3))
                        }
                        Spacer()
                    }
                    .padding([.top, .horizontal])
                    
                    switch selectionado{
                    case 1:
                        
                        ZStack{
                            VStack {
                                ForEach(cardsBolsasSalvas) { card in
                                    if var textos = dados[card.cardName] {
                                        NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                            CardBolsaView(card: card)
                                        }
                                    }
                                }
                                
                                if (cardsBolsasSalvas.count == 0){
                                    Spacer()
                                    Text("Nada por aqui")
                                }
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                        
                    case 2:
                        ZStack{
                            VStack {
                                ForEach(cardsAuxiliosSalvos){ card in
                                    if let textos = dados[card.cardName] {
                                        NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                            CardAuxilioView(card: card)
                                        }
                                    }
                                }
                                if (cardsAuxiliosSalvos.count == 0) {
                                    Spacer()
                                    Text("Nada por aqui")
                                }
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    case 3:
                        ZStack{
                            VStack {
                                ForEach(cardsEstagiosSalvos){ card in
                                    if let textos = dados[card.cardName] {
                                        NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                            CardEstagioView(card: card)
                                        }
                                    }
                                }
                                if (cardsEstagiosSalvos.count == 0){
                                    Spacer()
                                    Text("Nada por aqui")
                                }
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                    default:
                        EmptyView()
                        
                    }
                    
                }
            }
            .border(Color(.background), width: 0.5)
            .navigationTitle("Salvos")
            .toolbarBackground(.visible)
            .toolbar {
                Button {} label: {
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(Color(.tinta))
                    }
                }
            Spacer()
            }
        }
    }


#Preview {
    SalvosView()
}
