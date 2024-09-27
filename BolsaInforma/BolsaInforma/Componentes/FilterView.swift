//
//  FilterView.swift
//  BolsaInforma
//
//  Created by found on 30/08/24.
//

import SwiftUI

struct FilterView: View {
    
    @State var filterButtons: Array<FilterButton>
    @State var filters: Array<FilterButton> = [FilterButton(text: "")]
    @State var filterName: String = ""
    @State var showFilters: Bool = false
    @State var isPresented = false
    @State var selectedFilter: FilterButton
    @State var presentationHeight = 200.0
    
    @State var appliedFilters = []
    
    func defFilters(filterName: String) {
        switch filterName {
        case "Tipo":
            filters = [
                FilterButton(text: "Pesquisa"),
                FilterButton(text: "Extensão")
            ]
        case "Área de Atuação":
            filters = [
                FilterButton(text: "Computação"),
                FilterButton(text: "Construção Civil"),
                FilterButton(text: "Ciências da Natureza"),
                FilterButton(text: "Indústria"),
                FilterButton(text: "Artes"),
                FilterButton(text: "Turismo"),
                FilterButton(text: "Ensino"),
                FilterButton(text: "Gestão")
                
            ]
        case "Escolaridade":
            filters = [
                FilterButton(text: "Técnico"),
                FilterButton(text: "Superior"),
                FilterButton(text: "Pós-Graduação")
            ]
        default:
            filters = [FilterButton(text: "")]
        }
    }
    
    
    
    var body: some View {
        
        
        VStack (alignment: .trailing){
            HStack{
                Spacer()
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        showFilters.toggle()
                    }
                } label: {
                    Text("Filtros")
                        .font(.system(size: 16))
                        .underline()
                        .foregroundStyle(.tinta)
                }
            }
            if showFilters {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows:
                                [GridItem(.adaptive(minimum: 300))]) {
                        ForEach(filterButtons) { button in
                            Button {
                                var count: Int = 0
                                filterName = button.text
                                selectedFilter = button
                                defFilters(filterName: filterName)
                                
                                if (button.text == "Tudo") {
                                    for element in filterButtons {
                                        element.setIsSelect(isSelected: false)
                                    }
                                    button.setIsSelect(isSelected: true)
                                } else {
                                    filterButtons[0].setIsSelect(isSelected: false)
                                    if (button.isSelected) {
                                        appliedFilters.removeAll { $0 as! String == "carro" }
                                    }
                                    button.isSelected.toggle()
                                    for element in filterButtons {
                                        if (element.isSelected == true) {
                                            count += 1
                                        }
                                    }
                                    if (count == 0) {
                                        filterButtons[0].setIsSelect(isSelected: true)
                                    }
                                    
                                }
                                
                                switch filterName {
                                case "Tipo":
                                    presentationHeight = 130
                                case "Área de Atuação":
                                    presentationHeight = 210
                                default:
                                    presentationHeight = 170
                                }
                                
                                if (button.isSelected == true) {
                                    isPresented = (filterName != "Tudo") ? button.isSelected : false
                                }
                                
                            } label: {
                                FilterButtonView(filterButton: button)
                            }
                            .onChange(of: filterName) { newFilterName in
                                if (selectedFilter.isSelected == true){
                                    isPresented = (newFilterName != "Tudo") ? true : false
                                }
                                    }
                            .sheet(isPresented: $isPresented) {
                                var count = 0
                                
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(Color.gray.opacity(0.5))
                                    .frame(width: 40, height: 5)
                                    .padding(.top, 8)

                                VStack(alignment: .center) {
                                    VStack {
                                        HStack {
                                            Button("Cancelar") {
                                                isPresented = false
                                                selectedFilter.isSelected = false
                                                for element in filterButtons {
                                                    if (element.isSelected == true) {
                                                        count += 1
                                                    }
                                                }
                                                if (count == 0) {
                                                    filterButtons[0].setIsSelect(isSelected: true)
                                                }
                                            }
                                            .tint(Color.red)
                                            Spacer()
                                            Text(filterName)
                                                .font(.system(size: 20))
                                                .fontWeight(.medium)
                                            
                                            Spacer()
                                            Button("Aplicar") {
                                                isPresented = false
                                                for element in filters {
                                                    if (element.isSelected) {
                                                        count += 1
                                                    }
                                                }
                                                if (count == 0) {
                                                    selectedFilter.isSelected = false
                                                    for element in filterButtons {
                                                        if (element.isSelected == true) {
                                                            count += 1
                                                        }
                                                    }
                                                    if (count == 0) {
                                                        filterButtons[0].setIsSelect(isSelected: true)
                                                    }
                                                }
                                                else {
                                                    for filter in filters {
                                                        if (filter.isSelected) {
                                                            appliedFilters.append(filter.text)
                                                        }
                                                    }
                                                }
                                                
                                                
                                            }
                                            .padding(.leading)
                                            .tint(Color.tinta)
                                            
                                        }
                                        .font(.system(size: 16))
                                        .padding([.horizontal], 20)
//                                        Rectangle()
//                                            .frame(width: .infinity, height: 0.5)
//                                            .foregroundStyle(Color.background)
                                    }
                                    Spacer()
                                    HStack{
                                        LazyHGrid(rows:[GridItem(.adaptive(minimum: 30, maximum: 150))]){
                                            ForEach(filters){ filter in
                                                Button{
                                                    filter.isSelected.toggle()
                                                    count += filter.isSelected ? 1 : -1
                                                } label: {
                                                    FilterButtonView(filterButton: filter)
                                                }
                                            }
                                            
                                        }
                                    }
                                    
                                    Spacer()
                                }
                                .presentationDetents([.height(presentationHeight)])
                                .interactiveDismissDisabled()
                            }
                            
                            
                        }
                    }
                }
                .transition(.move(edge: .trailing))
            }
        }
        .frame(height: showFilters ? 65 : 18)
    }

        
}

#Preview {
    FilterView(
               filterButtons: [
        FilterButton(text: "Tudo", isSelected: true),
        FilterButton(text: "Tipo"),
        FilterButton(text: "Área de Atuação"),
        FilterButton(text: "Escolaridade")],
    selectedFilter: FilterButton(text: "Tudo"))
                         
}
