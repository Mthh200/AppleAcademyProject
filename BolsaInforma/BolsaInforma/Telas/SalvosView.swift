//
//  SalvosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct SalvosView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.fundo)
                VStack {
                    
                    CardView(card: Card(arg1: "Apple Academy - Foundation", arg2: "Extensão", arg3: "Até 12/12 às 12h", isSalvo: true))
                    Spacer()
                }
                .padding()
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
}

#Preview {
    SalvosView()
}
