//
//  ContentView.swift
//  BolsaInforma
//
//  Created by found on 09/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            VagasView()
                .tabItem {
                    Label("Vagas", systemImage: "doc.text.magnifyingglass")
                }
            EstagiosView()
                .tabItem {
                    Label("Estagios", systemImage:
                    "briefcase.fill")
                }
            SalvosView()
                .tabItem {
                    Label("Salvos", systemImage: "bookmark")
                }
        }
        .tint(Color(.tinta))
    }
}
#Preview {
    ContentView()
}
