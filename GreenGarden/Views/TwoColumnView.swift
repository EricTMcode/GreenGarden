//
//  TwoColumnView.swift
//  GreenGarden
//
//  Created by Eric on 08/06/2023.
//

import SwiftUI

struct TwoColumnView: View {
    let left: String
    let right: String
    
    var body: some View {
        HStack {
            Text(left)
            Spacer()
            Text(right)
        }
    }
}

struct TwoColumnView_Previews: PreviewProvider {
    static var previews: some View {
        TwoColumnView(left: "left", right: "right")
    }
}
