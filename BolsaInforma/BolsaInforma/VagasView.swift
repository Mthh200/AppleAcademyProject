//
//  VagasView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct VagasView: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                
            }
            
            .navigationTitle("Vagas")
            .toolbar{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.arrow.up")
                })
            
            }
        }
        .tint(Color("Tint"))
        
        
        
    }
}

#Preview {
    VagasView()
}
