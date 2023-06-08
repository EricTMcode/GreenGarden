//
//  AboutUs.swift
//  GreenGarden
//
//  Created by Eric on 08/06/2023.
//

import SwiftUI

struct AboutUs: View {
    let vegetable: VegetableViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text(vegetable.description)
                .fixedSize(horizontal: false, vertical: true)
            
            Text("Sowing")
                .font(.headline)
            
            VStack(spacing: 10) {
                TwoColumnView(left: "Seed depth", right: vegetable.seedDepth)
                TwoColumnView(left: "Germination soil temperature", right: vegetable.growingSoilTemperature)
            }
            Spacer()
        }
        .padding()
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs(vegetable: VegetableViewModel.default())
    }
}
