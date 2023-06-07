//
//  VegetableListViewModel.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import Foundation

@MainActor
class VegetableListViewModel: ObservableObject {
    
    @Published var vegetables: [VegetableViewModel] = []
    
    func getAll() async {
        do {
            let vegetables = try await webservice().getAllVegetables(url: Constants.Urls.getAllVegetables)
            
            self.vegetables = vegetables.map(VegetableViewModel.init)
        } catch {
            print(error)
        }
    }
}

struct VegetableViewModel {
    
    fileprivate let vegetable: Vegetable
    
    var id: Int {
        vegetable.vegetableId
    }
    
    var name: String {
        vegetable.name
    }
    
    var description: String {
        vegetable.description
    }
    
    var thumbnailUrl: URL? {
        URL(string: vegetable.thumbnailImage)
    }
}
