//  Step Into Vision - Example Code
//
//  Title: Concept002
//
//  Subtitle: Volume Test
//
//  Description:
//
//  Type: Volume
//
//  Featured: true
//
//  Created by Joseph Simpson on 2/4/26.

import SwiftUI
import RealityKit
import RealityKitContent

struct Concept002: View {
    var body: some View {
        RealityView { content in

            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                content.add(scene)
            }

        }
    }
}

#Preview {
    Concept002()
}
