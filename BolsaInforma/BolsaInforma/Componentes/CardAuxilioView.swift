//
//  CardVagaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct CardAuxilioView: View {
    
    var card: Card
    var image: String = "eyeglasses"
    
    init(card: Card) {
        self.card = card
        
        switch card.arg1{
        case "Auxílio Óculos":
            image = "eyeglasses"
        case "Auxílio Transporte":
            image = "car.fill"
        case "Auxílio Formação":
            image = "Auxílio Formação"
        case "Auxílio Moradia":
            image = "house"
        default:
            image = "hjb"
        }
    }
    
    
    
    var body: some View {
        
        
            
        
        ZStack(alignment: .leading){
            
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
                    if (image == "Auxílio Formação"){
                        Image(image)
                            .font(.system(size: 28))
                    } else{
                        Image(systemName: image)
                            .font(.system(size: 28))
                    }
                        
                    
                    
                }
                .padding([.top, .leading, .bottom])
                
                VStack(alignment: .leading){
                    Text(card.arg1)
                        .font(.system(size: 23))
                    
                    Text(card.arg3)
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
    }
}

#Preview {
    CardAuxilioView(card: Card(arg1: "Nome", arg2: "", arg3: "Prazo", isSalvo: true))
        .padding()
}
