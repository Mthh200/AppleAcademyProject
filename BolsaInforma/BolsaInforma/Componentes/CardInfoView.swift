//
//  CardTipoDaBolsaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardTipoDaBolsaView: View {

    
    
    
//    View Incompleta
    
    
    
    

    var body: some View {
        ZStack(alignment: .topLeading){
            
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(.tinta))
                .frame(width: 352, height: 86)
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke()
                        .foregroundStyle(Color(.tinta))
                        .frame(width: 53, height: 53)
                    Image(systemName: "pencil.circle")
                        
                        
                }
                .padding([.top, .leading, .bottom])
                
                Text("Nome")
            }
            
            
            
        }
    }
}

#Preview {
    CardTipoDaBolsaView()
}
