//
//  EstagiosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct EstagiosView: View {
    var body: some View {
        NavigationStack {
                
            VStack {
                
                CardView(nome: "Nome", tipo: "Tipo", prazo: "Prazo", salvo: true)
                Spacer()
            }
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
    EstagiosView()
}
