//
//  VegetableDetailScreen.swift
//  GreenGarden
//
//  Created by Eric on 07/06/2023.
//

import SwiftUI

enum VegetableInfoOptions: CaseIterable {
    case about
    case companions
    case problems
}

extension VegetableInfoOptions {
    var title: String {
        switch self {
        case .about: return "About"
        case .companions: return "Companions"
        case .problems: return "Problems"
        }
    }
}

struct VegetableDetailScreen: View {
    @State private var selection: VegetableInfoOptions = .about
    let vegetable: VegetableViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Picker("Select", selection: $selection) {
                    ForEach(VegetableInfoOptions.allCases, id: \.self) { info in
                        Text(info.title)
                            .tag(info)
                    }
                }
                .pickerStyle(.segmented)
                
                switch selection {
                case .about:
                    Text("About US")
                case .companions:
                    Text("Companions")
                case .problems:
                    Text("Problems")
                }
            }
        }
    }
}

struct VegetableDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailScreen(vegetable: VegetableViewModel.default())
    }
}
