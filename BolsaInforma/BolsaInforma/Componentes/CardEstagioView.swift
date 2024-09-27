//
//  CardView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardEstagioView: View{

    @ObservedObject var card: CardEstagio
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .strokeBorder(Color.tinta, lineWidth: 1)
                .frame(height: 92)
            HStack {
                VStack(alignment: .leading) {
                    Text(card.cardName)
                        .font(.system(size: 23))
                        .fontWeight(.medium)
                    
                    Text(card.areaDeAtuacao)
                        .font(.system(size: 16))
                    
                    Text(card.prazo)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(.tinta))
                }
                .foregroundStyle(Color.black)
                .padding(.leading, 15.0)
                .lineLimit(1)
                
                Spacer()
                
                if (card.isSalvo == true) {
                    Image(systemName: "bookmark.fill")
                        .padding(.bottom, 50.0)
                        .padding(.trailing, 5.0)
                        .foregroundStyle(Color(.tinta))
                        .font(.system(size: 26))
                    
                }
                    
            }
            .frame(height: 92)
            
        }
        .contextMenu {
            
            Button(card.isSalvo ? "Remover dos salvos" : "Salvar") {
                card.isSalvo.toggle()
            }
            Button("Reportar erro", role: .destructive){
}
        }
        
        
    }
}


#Preview {
    CardBolsaView(card: CardBolsa(cardName: "Nome", tipo: "Tipo", prazo: "Prazo", areadeAtuacao: "Computação", isSalvo: true))
        .padding()
}
