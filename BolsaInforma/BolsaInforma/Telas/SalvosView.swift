//
//  SalvosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct SalvosView: View {
    
    @State var selectionado: Int = 1
    
    let dados = Dados().dados
    var cardsBolsasSalvas = VagasView().cardsBolsas.filter{card in
        if (card.isSalvo == true){
            return true
        } else{
            return false
        }
    }
    var cardsAuxiliosSalvos = VagasView().cardsAuxilios.filter{card in
        if (card.isSalvo == true){
            return true
        } else{
            return false
        }
    }
    
    
    var body: some View {
        NavigationStack {
            ZStack{
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
                                ForEach(cardsBolsasSalvas){ card in
                                    if let textos = dados[card.arg1] {
                                        NavigationLink(destination: VagaView(textos: textos, title: card.arg1)) {
                                            CardView(card: card)
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
                        EmptyView()
                    case 3:
                        EmptyView()
                    default:
                        EmptyView()
                        
                    }
                    
                }
            }
            .navigationTitle("Salvos")
            .toolbarBackground(.visible)
            .toolbar {
                Button {} label: {
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(Color(.tinta))
                    }
                }
            }
        }
    }


#Preview {
    SalvosView()
}
