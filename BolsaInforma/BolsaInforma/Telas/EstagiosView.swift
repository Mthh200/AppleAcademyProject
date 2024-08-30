//
//  EstagiosView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct EstagiosView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
                
            VStack {
                
                CardView(card: Card(arg1: "AprendaCerto", arg2: "Computação", arg3: "Nível Superior e Médio", isSalvo: true))
                Spacer()
            }
            .padding()
            .navigationTitle("Estágios")
            .toolbarBackground(.visible)
            .searchable(text: $searchText)
            
            
            }
        }
    }


#Preview {
    EstagiosView()
}
