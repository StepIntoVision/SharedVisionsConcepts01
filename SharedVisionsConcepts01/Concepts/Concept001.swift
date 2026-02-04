//  Shared Visions Concepts
//
//  Title: Concept001
//
//  Subtitle: Shared Visions Honeycomb Layout
//
//  Description: The original honeycomb grid with person nodes and hover effects
//
//  Type: Window
//
//  Featured: true
//
//  Created by Joseph Simpson on 2/1/26.

import SwiftUI

struct Concept001: View {
    var body: some View {
        ZStack {
            SharedVisionsBackground()
            SharedVisionsTitleView()
        }
    }
}

#Preview {
    Concept001()
        .environment(AppModel())
}
