//
//  VegetableListScreen.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import SwiftUI

struct VegetableListScreen: View {
    @StateObject private var vegetableListVM = VegetableListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(vegetableListVM.vegetables, id: \.id) { vegetable in
                    NavigationLink {
                        VegetableDetailScreen(vegetable: vegetable)
                    } label: {
                    VegetableCell(vegetable: vegetable)
                        .background(Constants.Colors.lightGreyRowColor)
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                }
                }
                .listRowSeparator(.hidden)
            }
            .padding(.top)
            .listStyle(.plain)
            .task {
                await vegetableListVM.getAll()
            }
        }
    }
}

struct VegetableListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            VegetableListScreen()
        }
    }
}

struct VegetableCell: View {
    let vegetable: VegetableViewModel
    
    var body: some View {
        HStack {
            AsyncImage(url: vegetable.thumbnailUrl) { image in
                image.resizable()
                    .scaledToFit()
                    .frame(maxWidth: 75, maxHeight: 75)
            } placeholder: {
                ProgressView()
            }
            Text(vegetable.name)
            Spacer()
        }
        .padding(5)
        .frame(maxWidth: .infinity)
    }
}
