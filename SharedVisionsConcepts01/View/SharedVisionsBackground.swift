//
//  SharedVisionsBackground.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

struct SharedVisionsBackground: View {
    var body: some View {
        HoneycombLayout {
            ForEach(0..<72, id: \.self) { index in
                PersonNode()
            }
        }
    }
}

#Preview {
    SharedVisionsBackground()
}

fileprivate struct PersonNode: View {

    @Namespace private var hoverNamespace

    var body: some View {
        ZStack {
            Circle()
                .fill(.thinMaterial)
                .frame(width: 80, height: 80)
            Image(systemName: "person.fill")
                .foregroundStyle(.secondary)
                .font(.largeTitle)
                .hoverEffect(in: HoverEffectGroup(hoverNamespace)) { effect, isActive, proxy in
                    effect.opacity(isActive ? 1.0 : 0)
                }

        }
        .padding(12)
        .hoverEffect(in: HoverEffectGroup(hoverNamespace)) { effect, isActive, proxy in
            effect
                .scaleEffect(isActive ? 1.2 : 1.0)
                .opacity(isActive ? 1.0 : 0.2)

        }
    }
}
