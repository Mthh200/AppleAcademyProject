//
//  VagasView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct VagasView: View {
    
    @State var searchText: String = ""
    var cards = [
        CardView(nome: "Nome", tipo: "Tipo", prazo: "Prazo", salvo: true),
        CardView(nome: "Nome2", tipo: "Tipo", prazo: "Prazo", salvo: true),
        CardView(nome: "Nome3", tipo: "Tipo", prazo: "Prazo", salvo: true),
        CardView(nome: "Nome4", tipo: "Tipo", prazo: "Prazo", salvo: true)
    ]
    
    var body: some View {
        NavigationStack {
                
            ScrollView{
                VStack {
                    ForEach(cards){ card in
                        card
                    }
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Vagas")
            .toolbarBackground(.visible)
            .toolbar{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.arrow.up")
                })
                .foregroundStyle(Color(.tinta))
            }
        }
            
    }
}

#Preview {
    VagasView()
}
