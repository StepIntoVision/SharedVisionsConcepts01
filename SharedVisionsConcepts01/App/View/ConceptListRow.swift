//
//  ConceptListRow.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

struct ConceptListRow: View {
    var concept: Concept

    var body: some View {
        HStack {
            Text("\(concept.title) - \(concept.subtitle)")
            Spacer()
            if(concept.success == false) {
                Image(systemName: "x.circle.fill")
                    .foregroundColor(.red)
                    .padding(4)
            }
            switch concept.type {
            case .WINDOW, .WINDOW_ALT:
                Image(systemName: "macwindow")
            case .VOLUME:
                Image(systemName: "cube.transparent")
            case .SPACE:
                Image(systemName: "visionpro.fill")
            case .SPACE_FULL:
                Image(systemName: "visionpro.fill")
            }

        }
    }
}

#Preview {
    let modelData = ModelData()
    let length = modelData.conceptData.count
    if length > 0 {
        return ConceptListRow(concept: modelData.conceptData[length - 1])
    } else {
        return Text("No concepts available")
    }
}
