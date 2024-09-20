//
//  CardTipoDaBolsaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//
import SwiftUI
struct CardInfoView: View {
    
    
    let lista: Textos
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .strokeBorder(Color.tinta)
            VStack(alignment: .leading){
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.tinta)
                            .frame(width: 53, height: 53)
                        Image(systemName: "pencil.circle")
                        
                    }
                    
                    Text(lista.nome)
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(10)
                }
                .padding([.top, .leading])
//                if !lista.textos.isEmpty {
                VStack{
                    ForEach(lista.textos){ element in
                        HStack(alignment: .top){
                            Text("•")
                                .frame(width: 20)
                            Text(element.texto)
                                .font(.system(size: 17))
                                .frame(width: 295, alignment: .leading)
                        }
                    }
                }
                .padding(.top, lista.textos.isEmpty ? 0 : 10)
                .padding([.leading, .bottom])
            }
        }
        .padding(.bottom, 8)
    }
}
#Preview {
    CardInfoView(lista: Textos(nome: "Teste", textos: [
        Texto(texto: "hbcdjbcjdbs cjsd"),
        Texto(texto: "hbcdjbc")
    ]))
}
