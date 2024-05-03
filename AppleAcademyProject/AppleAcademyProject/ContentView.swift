//
//  ContentView.swift
//  ClassMeet2
//
//  Created by found on 03/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            SalasView()
                .tabItem {
                    Label("Salas", systemImage: "person.2")
                }
            ConversasView()
                .tabItem {
                    Label("Conversas", systemImage: "text.bubble")
                }
            AgendaView()
                .tabItem {
                    Label("Agenda", systemImage: "calendar")
                }
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.circle")
                }
        }
    }
}
    


#Preview {
    ContentView()
}

