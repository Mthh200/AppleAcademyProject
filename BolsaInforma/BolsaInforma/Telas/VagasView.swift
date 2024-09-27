//
//  VagasView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI
import WebKit

struct VagasView: View {

    let dados = Dados().dados
    
    @State var isPresented: Bool = false
    @State var showEncaminhamento = false
    @State var searchText: String = ""
    @State var showWebView = false
        

    
    var filterButtons = [
        FilterButton(text: "Tudo", isSelected: true),
        FilterButton(text: "Tipo"),
        FilterButton(text: "Área de Atuação"),
        FilterButton(text: "Escolaridade")
    ]
    
    var cardsBolsas = [
        CardBolsa(cardName: "Apple Academy Foundation", tipo: "Extensão", prazo: "Até 12/12 às 12h", areadeAtuacao: "Computação", isSalvo: true),
        CardBolsa(cardName: "Mentoria Huawei", tipo: "Extensão", prazo: "Até 12/12 às 12h", areadeAtuacao: "Computação", isSalvo: true),
        CardBolsa(cardName: "PIBIC", tipo: "Pesquisa", prazo: "Até 12/12 às 12h", areadeAtuacao: "Computação", isSalvo: false)
    ]
    var cardsAuxilios = [
        CardAuxilio(cardName: "Auxílio Óculos", image: "", prazo: "Até 12/12 às 12h", isSalvo: true),
        CardAuxilio(cardName: "Auxílio Transporte", image: "", prazo: "Até 12/12 às 12h", isSalvo: false),
        CardAuxilio(cardName: "Auxílio Formação", image: "", prazo: "Até 12/12 às 12h", isSalvo: false),
        CardAuxilio(cardName: "Auxílio Moradia", image: "", prazo: "Até 12/12 às 12h", isSalvo: false)
    ].filter { card in
        return true
    }
    
    var filteredBolsas: [CardBolsa] {
        cardsBolsas.filter { card in
            searchText.isEmpty || card.cardName.localizedCaseInsensitiveContains(searchText)
        }
    }
        
    var filteredAuxilios: [CardAuxilio] {
        cardsAuxilios.filter { card in
            searchText.isEmpty || card.cardName.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    @State var selectionado: Int = 1
    
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
                        
                        ScrollView(showsIndicators: false) {
                            VStack {
                                Spacer()
                                
//                                filterView
                                FilterView(filterButtons: filterButtons, selectedFilter: FilterButton(text: "Tudo"))
                                
                                ForEach(filteredBolsas) { card in
                                    if var textos = dados[card.cardName] {
                                        ZStack {
                                            NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                                CardBolsaView(card: card)
                                            }
                                            
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
                                    if var textos = dados[card.cardName] {
                                        ZStack {
                                            NavigationLink(destination: VagaView(textos: textos, title: card.cardName)) {
                                                CardAuxilioView(card: card)
                                            }
                                        }
                                    }
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
                    Button {
                        showEncaminhamento = true
                    } label: {
                        Image(systemName: "link")
                    }
                    .foregroundStyle(Color(.tinta))
                    .sheet(isPresented: $showEncaminhamento) {
                        RoundedRectangle(cornerRadius: 3)
                                    .fill(Color.gray.opacity(0.5))
                                    .frame(width: 40, height: 5)
                                    .padding(.top, 8)
                        
                        Text("Encaminhamento")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .presentationDetents([.height(140)])
//                            .padding(.top)
                        Button {
                            showEncaminhamento.toggle()
                            showWebView.toggle()
                        } label: {
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.fundo)
                                    .strokeBorder(Color.tinta, lineWidth: 1)
                                HStack{
                                    Image("SisaeIcon")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .padding(.horizontal)
                                    
                                    Text("Acesse o site do SisAe")
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                        .foregroundColor(.tinta)
                                }
                            }
                            .frame(height: 55)
                            .padding(.horizontal)
                        }
                        
                        Spacer()
                    }
                    .sheet(isPresented: $showWebView) {
                        WebView(urlString: "https://sisae.ifce.edu.br")
                            .onDisappear {
                                showWebView = false
                            }
                            .edgesIgnoringSafeArea(.all) // Para usar a tela inteira, se preferir
                    }
                }
            }



        }
    }
    
}

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}




#Preview {
    VagasView()
        .tint(Color.tinta)
}
