//
//  CardVagaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardVagaView: View {
    
    var nome: String
    var prazo: String
    var image: String
    
    
    var body: some View {
        ZStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(.tinta))
                .frame(width: 352, height: 98)
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke()
                        .foregroundStyle(Color(.tinta))
                        .frame(width: 55, height: 55)
                    Image(systemName: image)
                        .font(.system(size: 35))
                    
                }
                .padding([.top, .leading, .bottom])
                
                VStack(alignment: .leading){
                    Text(nome)
                        .font(.system(size: 26))
                    
                    Text(prazo)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(.tinta))
                }
                .padding(.leading, 5.0)
                
                
            }
            
            
            
        }
    }
}

#Preview {
    CardVagaView(nome: "Nome", prazo: "Prazo", image: "pencil.circle")
}
