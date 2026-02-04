//
//  Directory.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct Directory: View {

    var body: some View {
        NavigationStack {
            ConceptList()
        }
        .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
        .ornament(attachmentAnchor: .scene(.top)) {
            HStack {
                Image(systemName: "arrow.down.to.line")
                Text("Shared Visions")
            }
            .font(.largeTitle)
            .padding(20)
            .background(.thickMaterial)
            .glassBackgroundEffect()
            .cornerRadius(20)

        }
    }
}

#Preview(windowStyle: .automatic) {
    let modelData = ModelData()
    return Directory()
        .environment(modelData)
}
