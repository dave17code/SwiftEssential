//
//  Shapes.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/13/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
//            .fill(Color.yellow)
//            .strokeBorder(Color.pink, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10, 20]))
//            .frame(width: 200, height: 200)
            .trim(from: 0.3, to: 1.0)
    }
}

#Preview {
    Shapes()
}
