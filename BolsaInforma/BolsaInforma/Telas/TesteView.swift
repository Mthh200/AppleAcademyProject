//
//  TesteView.swift
//  BolsaInforma
//
//  Created by found on 06/09/24.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black)
                    .foregroundStyle(.white)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black)
                    .foregroundStyle(.white)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    TesteView()
}
