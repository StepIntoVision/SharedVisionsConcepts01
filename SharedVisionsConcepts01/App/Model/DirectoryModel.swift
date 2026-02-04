//
//  DirectoryModel.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

enum ConceptType: String {
    case WINDOW  = "Window Content"
    case WINDOW_ALT  = "Plain Window Content"
    case VOLUME = "Volume Content"
    case SPACE = "Mixed Immersive Space"
    case SPACE_FULL = "Full Immersive Space"
}

struct Concept: Identifiable {
    let id = UUID()
    var type: ConceptType
    var isFeatured: Bool
    var date: Date
    var title: String
    var subtitle: String
    var description: String
    var success: Bool
    var makeView: () -> AnyView

    init(title: String,
         type: ConceptType,
         date: Date,
         isFeatured: Bool = false,
         subtitle: String,
         description: String,
         success: Bool = true,
         makeView: @escaping () -> AnyView = { AnyView(EmptyView()) }) {
        self.title = title
        self.type = type
        self.isFeatured = isFeatured
        self.date = date
        self.subtitle = subtitle
        self.description = description
        self.success = success
        self.makeView = makeView
    }
}

@Observable
class ModelData {
    var conceptData: [Concept] = ConceptRegistry.allConcepts

    var conceptByTitle: [String: Concept] {
        ConceptRegistry.conceptsByTitle
    }
}
