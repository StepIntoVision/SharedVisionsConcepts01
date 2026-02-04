//  Shared Visions Concepts
//
//  Title: Concept001
//
//  Subtitle: Profile Honeycomb Background
//
//  Description: The original honeycomb grid with person nodes and hover effects
//
//  Type: Window Alt
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
        .glassBackgroundEffect(in: .capsule, displayMode: .always)
    }
}

#Preview {
    Concept001()
        .environment(AppModel())
}
// MARK: - Supporting Views

fileprivate struct SharedVisionsBackground: View {
    var body: some View {
        HoneycombLayout {
            ForEach(0..<72, id: \.self) { index in
                PersonNode()
            }
        }
    }
}

fileprivate struct SharedVisionsTitleView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Shared Visions")
                .font(.extraLargeTitle)
            VStack {
                Text("An immersive story about the")
                Text("Apple Vision Pro Community")
            }
            .font(.caption)

//            ToggleImmersiveSpaceButton()
                .offset(y: 30)
        }
        .frame(width: 320, height: 320)
        .glassBackgroundEffect(.automatic, in: .circle, displayMode: .always)
    }
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

// MARK: - Layout


