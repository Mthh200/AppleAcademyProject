//
//  CardVagaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardAuxilioView: View {
    
    @ObservedObject var card: CardAuxilio
    
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .strokeBorder(Color.tinta, lineWidth: 1)
                .frame(height: 92)
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                        .strokeBorder(Color.tinta, lineWidth: 1)
                        .frame(width: 55, height: 55)
                    if (card.image == "Auxílio Formação"){
                        Image(card.image)
                            .font(.system(size: 28))
                    } else{
                        Image(systemName: card.image)
                            .font(.system(size: 28))
                    }
                }
                .padding([.top, .leading, .bottom])
                
                VStack(alignment: .leading){
                    Text(card.cardName)
                        .font(.system(size: 23))
                    
                    Text(card.prazo)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(.tinta))
                }
                .padding(.leading, 5.0)
                
                Spacer()
                if (card.isSalvo == true){
                    Image(systemName: "bookmark.fill")
                        .padding(.bottom, 50.0)
                        .padding(.trailing, 5.0)
                        .foregroundStyle(Color(.tinta))
                        .font(.system(size: 26))
                    
                }
                
            }
            .frame(height: 92)
            
            
            
        }
        .foregroundStyle(Color.black)
        .contextMenu {
            
            Button(card.isSalvo ? "Remover dos salvos" : "Salvar") {
                card.isSalvo.toggle()
            }
            Button("Reportar erro", role: .destructive){}
        }
    }
}

#Preview {
    CardAuxilioView(card: CardAuxilio(cardName: "Nome", image: "pencil", prazo: "Prazo", isSalvo: true))
        .padding()
}
