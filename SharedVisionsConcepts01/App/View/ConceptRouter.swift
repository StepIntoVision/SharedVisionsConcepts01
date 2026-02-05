//
//  ConceptRouter.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

// MARK: - Notification Names
extension Notification.Name {
    static let conceptViewDidDisappear = Notification.Name("conceptViewDidDisappear")
}

struct ConceptRouter: View {
    @Binding var route: String?

    @ViewBuilder
    var body: some View {
        if let route, let concept = ConceptRegistry.conceptsByTitle[route] {
            concept.makeView()
                .onDisappear() {
                    // Broadcast the disappearance event
                    NotificationCenter.default.post(
                        name: .conceptViewDidDisappear,
                        object: nil,
                        userInfo: ["conceptTitle": route]
                    )
                }
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
