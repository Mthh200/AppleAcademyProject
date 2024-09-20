//
//  VagasView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct VagasView: View {
    
    let dados = Dados().dados
    
    @State var searchText: String = ""
    
    var cardsBolsas = [
        Card(arg1: "Apple Academy Foundation", arg2: "Extensão", arg3: "Até 12/12 às 12h", isSalvo: false),
        Card(arg1: "Mentoria Huawei", arg2: "Extensão", arg3: "Até 12/12 às 12h", isSalvo: false),
        Card(arg1: "PIBIC", arg2: "Pesquisa", arg3: "Até 12/12 às 12h", isSalvo: false)
    ]
    var cardsAuxilios = [
        Card(arg1: "Auxílio Óculos", arg2: "", arg3: "Até 12/12 às 12h"),
        Card(arg1: "Auxílio Transporte", arg2: "", arg3: "Até 12/12 às 12h"),
        Card(arg1: "Auxílio Formação", arg2: "", arg3: "Até 12/12 às 12h"),
        Card(arg1: "Auxílio Moradia", arg2: "", arg3: "Até 12/12 às 12h")
    ]
    
    @State var selectionado: Int = 1
    
    var filteredBolsas: [Card] {
        cardsBolsas.filter { card in
            searchText.isEmpty || card.arg1.localizedCaseInsensitiveContains(searchText)
        }
    }
        
    var filteredAuxilios: [Card] {
        cardsAuxilios.filter { card in
            searchText.isEmpty || card.arg1.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack {
            
            VStack {
                HStack {
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
                    Spacer()
                }
                .padding(.horizontal)
                
                switch selectionado {
                    // TELA DE BOLSAS
                case 1:
                    ZStack {
                        Color.fundo
                        
                        ScrollView(showsIndicators: false){
                            VStack {
                                Spacer()
                                FilterView(filterButtons: [
                                    FilterButton(text: "Tudo", isSelected: true),
                                    FilterButton(text: "Pesquisa"),
                                    FilterButton(text: "Extensão"),
                                    FilterButton(text: "Área de Atuação"),
                                    FilterButton(text: "Escolaridade")
                                ])
                                
                                ForEach(filteredBolsas) { card in
                                    if let textos = dados[card.arg1] {
                                        NavigationLink(destination: VagaView(textos: textos, title: card.arg1)) {
                                            CardView(card: card)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    .border(Color(.background), width: 0.5)
                    // TELA DE AUXILIOS
                case 2:
                    ZStack {
                        Color(.fundo)
                        ScrollView(showsIndicators: false){
                            VStack {
                                Spacer()
                                
                                ForEach(filteredAuxilios){ card in
                                    CardAuxilioView(card: card)
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                    }
                    .border(Color(.background), width: 0.5)
                default:
                    EmptyView()
                }
                Spacer()
            }
            .navigationTitle("Vagas")
            .searchable(text: $searchText)
            .toolbar{
                ToolbarItem() {
                    Button {} label: {
                        Image(systemName: "link")
                    }
                    
                    .foregroundStyle(Color(.tinta))
                }
            }
        }
    }
    
}


#Preview {
    VagasView()
}
