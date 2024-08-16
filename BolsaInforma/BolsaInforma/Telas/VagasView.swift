//
//  VagasView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct VagasView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
                
            VStack {
                
                CardView(nome: "Nome", tipo: "Tipo", prazo: "Prazo", salvo: true)
                Spacer()
            }
            .searchable(text: $searchText)
            .navigationTitle("Vagas")
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
