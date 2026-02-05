//
//  Helpers.swift
//  SharedVisionsConcepts01
//
//  Created by Joseph Simpson on 2/1/26.
//

import SwiftUI

extension Date {
    init(_ dateString: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        self = dateFormatter.date(from: dateString) ?? Date()
    }
}



/// See WWDC 2025 Session: Meet SwiftUI spatial layout
/// https://developer.apple.com/videos/play/wwdc2025/273
extension View {
    func debugBorder3D(_ color: Color) -> some View {
        spatialOverlay {
            ZStack {
                Color.clear.border(color, width: 4)
                ZStack {
                    Color.clear.border(color, width: 4)
                    Spacer()
                    Color.clear.border(color, width: 4)
                }
                .rotation3DLayout(.degrees(90), axis: .y)
                Color.clear.border(color, width: 4)
            }
        }
    }
}

// As a view instead of a modifier
func debugBorder3DView(_ color: Color) -> some View {
    ZStack {
        Color.clear.border(color, width: 4)
        ZStack {
            Color.clear.border(color, width: 4)
            Spacer()
            Color.clear.border(color, width: 4)
        }
        .rotation3DLayout(.degrees(90), axis: .y)
        Color.clear.border(color, width: 4)
    }
}
