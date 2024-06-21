//
//  LoopForEach.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct LoopForEach: View {
    let backColors = [Color.red, Color.yellow, Color.pink, Color.black, Color.purple]
    
    var body: some View {
//        ForEach(0..<10, id: \.self) { index in
//            Text("Hello, World! \(index)" )
//        }
        ForEach(backColors, id: \.self) { color in
            Ellipse()
                .fill(color)
                .frame(width: 100, height: 120)
        }
    }
}

#Preview {
    LoopForEach()
}
