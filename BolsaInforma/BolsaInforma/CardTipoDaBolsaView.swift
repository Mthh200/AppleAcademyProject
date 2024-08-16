//
//  CardTipoDaBolsaView.swift
//  BolsaInforma
//
//  Created by found on 13/08/24.
//

import SwiftUI

struct CardTipoDaBolsaView: View {
    
    
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            retanguloTipoBolsaCard
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke()
                        .foregroundStyle(Color(.tinta))
                        .frame(width: 53, height: 53)
                    Image("TipoBolsaIcon")
                        .resizable()
                        .frame(width: 30, height: 40)
                        
                }
                .padding([.top, .leading, .bottom])
                
                Text("Extensão")
            }
            
            
            
        }
    }
}

#Preview {
    CardTipoDaBolsaView()
}
