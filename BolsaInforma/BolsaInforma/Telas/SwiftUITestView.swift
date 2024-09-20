//
//  SwiftUITestView.swift
//  BolsaInforma
//
//  Created by found on 20/09/24.
//

import SwiftUI

struct SwiftUITestView: View {
    @State var isPresented: Bool = false
    
    
    var body: some View {
        
        Text("Botão")
        
        .onLongPressGesture(){
            isPresented.toggle()
        }
        .confirmationDialog("aa", isPresented: $isPresented){
            Button("Salvar", role: .destructive){
                
            }
            Button("Reportar erro"){

            }
        }
        
    }
}

#Preview {
    SwiftUITestView()
}
