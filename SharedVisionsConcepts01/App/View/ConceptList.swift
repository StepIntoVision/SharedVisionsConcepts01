//
//  ConceptList.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

struct ConceptList: View {
    @Environment(ModelData.self) var modelData

    var featuredConcepts: [Concept] {
        modelData.conceptData.filter { $0.isFeatured }
    }

    var body: some View {
        List {
            Section(header: Text("Featured Concepts")) {
                ForEach(featuredConcepts) { concept in
                    NavigationLink {
                        ConceptDetail(concept: concept)
                    } label: {
                        ConceptListRow(concept: concept)
                    }
                }
            }

            Section(header: Text("All Concepts")) {
                ForEach(modelData.conceptData) { concept in
                    NavigationLink {
                        ConceptDetail(concept: concept)
                    } label: {
                        ConceptListRow(concept: concept)
                    }
                }
            }

        }

    }
}

#Preview {
    let modelData = ModelData()
    return ConceptList()
        .environment(modelData)
}
