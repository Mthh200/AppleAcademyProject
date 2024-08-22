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
        Card(arg1: "Apple Academy - Foundation", arg2: "Extensão", arg3: "Até 12/12 às 12h", isSalvo: true),
        Card(arg1: "Mentoria Huawei", arg2: "Extensão", arg3: "Até 12/12 às 12h", isSalvo: false),
        Card(arg1: "PIBIC", arg2: "Pesquisa", arg3: "Até 12/12 às 12h", isSalvo: false)
    ]
    
    var body: some View {
        NavigationStack {
                
            ScrollView{
                VStack {
                    ForEach(cards){ card in
                        CardView(card: card)
                    }
                }
                .padding()
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Vagas")
            .toolbarBackground(.visible)
            .toolbar{
                Button {} label: {
                    Image(systemName: "square.and.arrow.up")
                }
                .foregroundStyle(Color(.tinta))
            }
        }
            
    }
}

#Preview {
    VagasView()
}
