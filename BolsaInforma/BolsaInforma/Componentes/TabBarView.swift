//
//  TabBar.swift
//  BolsaInforma
//
//  Created by found on 13/08/24.
//

import SwiftUI

struct TabBarView: View {
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
        //define a cor da tabBar
//        .toolbarBackground(.visible, for: .navigationBar)
        
    }
}

#Preview {
    TabBarView()
}
