//
//  VagaView.swift
//  BolsaInforma
//
//  Created by found on 05/09/24.
//

import SwiftUI
struct VagaView: View {
    
    let textos: Array<Textos>
    let title: String
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.fundo
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns:
                                [GridItem(.adaptive(minimum: 300))]){
                        ForEach(textos){ texto in
                            CardInfoView(lista: texto)
                                .padding(.horizontal)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                // Ação de voltar personalizada
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .bold()
            })
            .toolbarBackground(.visible)
            
//            .toolbar {
//                ToolbarItem(placement: .principal){
//                    VStack(alignment: .leading){
//                        
//                        Text(title)
////                            .font(.system(size: 35))
//                            .fontWeight(.semibold)
//                    }
//                }
//            }
        }
        
    }
}
#Preview {
    VagaView(textos: [
        Textos(nome: "Extensão", textos: [
        ]),
        Textos(nome: "Resumo", textos: [
            Texto(texto: "Tem por finalidade a oferta de vagas para o curso de extensão IOS foundation, na modalidade presencial.")
        ])
    ], title:"Apple Academy - Foundation")
    .tint(Color.tinta)
}



