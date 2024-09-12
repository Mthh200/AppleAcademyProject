//
//  CardView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardView: View{

    let card: Card
    
    var body: some View {
        ZStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .strokeBorder(Color.tinta, lineWidth: 1)
                .frame(width: 362, height: 92)
            HStack{
                VStack(alignment: .leading){
                    Text(card.arg1)
                        .font(.system(size: 23))
                    
                    Text(card.arg2)
                        .font(.system(size: 16))
                    
                    Text(card.arg3)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(.tinta))
                }
                .padding(.leading, 15.0)
                .lineLimit(1)
                
                Spacer()
                
                if (card.isSalvo == true){
                    Image(systemName: "bookmark.fill")
                        .padding(.bottom, 50.0)
                        .padding(.trailing, 5.0)
                        .foregroundStyle(Color(.tinta))
                        .font(.system(size: 26))
                    
                }
                    
            }
            .frame(width: 362, height: 92)
            
        }
        
        
    }
}


#Preview {
    CardView(card: Card(arg1: "Nome", arg2: "Tipo", arg3: "Prazo", isSalvo: true))
}
