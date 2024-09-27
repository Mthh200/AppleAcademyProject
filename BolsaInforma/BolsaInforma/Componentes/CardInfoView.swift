//
//  CardTipoDaBolsaView.swift
//  BolsaInforma
//
//  Created by found on 16/08/24.
//
import SwiftUI
struct CardInfoView: View {
    
    let lista: Textos
    var image: Image
    var tamanho: CGFloat

    init(lista: Textos) {
        self.lista = lista
        
        switch lista.nome {
        case "Extensão":
            image = Image("Extensao")
            tamanho = 53
        case "Pesquisa":
            image = Image(systemName: "magnifyingglass")
            tamanho = 37
        case "Prazo de inscrições":
            image = Image(systemName: "calendar")
            tamanho = 37
        case "Resumo":
            image = Image(systemName: "text.justifyleft")
            tamanho = 37
        case "Requisitos":
            image = Image(systemName: "doc.plaintext")
            tamanho = 37
        case "Informações adicionais":
            image = Image(systemName: "pin.fill")
            tamanho = 37
        case "Edital":
            image = Image(systemName: "doc.text.fill")
            tamanho = 37
        case "Cursos":
            image = Image("Auxílio Formação")
            tamanho = 53
        case "Funções":
            image = Image(systemName: "hammer")
            tamanho = 37
        case "Benefícios":
            image = Image(systemName: "creditcard.fill")
            tamanho = 37
        case "Carga Horária":
            image = Image(systemName: "bell")
            tamanho = 37
        case "Contatos":
            image = Image(systemName: "person.2.fill")
            tamanho = 37
        default:
            image = Image(systemName: "pencil")
            tamanho = 37
        }
    }

    
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
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: tamanho, height: tamanho)

                        
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
                        .padding(0.1)
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
    CardInfoView(lista: Textos(nome: "Extensão", textos: [
        Texto(texto: "hbcdjbcjdbs cjsd"),
        Texto(texto: "hbcdjbc")
    ])).padding()
}
