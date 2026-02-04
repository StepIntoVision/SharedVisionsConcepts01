//
//  ConceptRouter.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

struct ConceptRouter: View {
    @Binding var route: String?

    @ViewBuilder
    var body: some View {
        if let route, let concept = ConceptRegistry.conceptsByTitle[route] {
            concept.makeView()
        } else {
            VStack {
                Text("No View could be found for " + (route ?? ""))
                    .font(.largeTitle)
                    .padding(12)
            }
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
    }
}
