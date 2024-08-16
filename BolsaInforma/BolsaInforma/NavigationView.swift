//
//  NavigationView.swift
//  BolsaInforma
//
//  Created by found on 13/08/24.
//

import SwiftUI

struct NavigationView: View {
    
    let nome: String
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            
            .navigationTitle(nome)
            .toolbar{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.arrow.up")
                })
            
            }
        }
        .tint(Color(.tinta))
        
    }
    
}

#Preview {
    NavigationView(nome: "Teste")
}
