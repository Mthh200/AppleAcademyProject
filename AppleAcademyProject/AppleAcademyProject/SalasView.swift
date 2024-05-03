//
//  SalasView.swift
//  ClassMeet2
//
//  Created by found on 03/05/24.
//
import SwiftUI

struct SalasView: View {
    @State private var searching: String = ""
    
    var body: some View {
        
        NavigationStack{
            
            Image(systemName: "plus.bubble")
                .frame()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
            
            HStack{
                
                Text("Nada por aqui")
                    .navigationTitle("Salas")
                    .searchable(text: $searching)
                    
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
