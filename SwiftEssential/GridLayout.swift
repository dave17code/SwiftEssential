//
//  GridLayout.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct GridLayout: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: nil, content: {
                ForEach(0..<100, id: \.self) { index in
                    Rectangle()
//                        .fill(Color.yellow)
                        .frame(height: 50)
                }
            })
        }
    }
}

#Preview {
    GridLayout()
}
