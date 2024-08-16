//
//  CardView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardView: View {
    
    var nome: String
    var tipo: String
    var prazo: String
    var salvo: Bool
    
    var body: some View {
        ZStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
                .foregroundStyle(Color(.tinta))
                .frame(width: 352, height: 98)
            HStack(){
                VStack(alignment: .leading){
                    Text(nome)
                        .font(.system(size: 26))
                    
                    Text(tipo)
                        .font(.system(size: 20))
                    
                    Text(prazo)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(.tinta))
                }
                .padding(.leading, 15.0)
                
                Spacer()
                
                if (salvo == true){
                    Image(systemName: "bookmark.fill")
                        .padding(.bottom, 50.0)
                        .padding(.trailing, 5.0)
                        .foregroundStyle(Color(.tinta))
                        .font(.system(size: 26))
                    
                }
                    
            }
            .frame(width: 352, height: 98)
            
        }
        
    }
}

#Preview {
    CardView(nome: "Nome", tipo: "Tipo", prazo: "Prazo", salvo: true)
}
