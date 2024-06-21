//
//  LazyStacks.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center, spacing: nil, pinnedViews: .sectionHeaders, content: {
                Section {
                    ForEach(1...1000, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.purple)
                            .frame(width: 300, height: 200)
                    }
                } header: {
                    Text("Header View")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            })
        }
        
//        ScrollView {
//            LazyVStack {
//                ForEach(0...100, id: \.self) { index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(Color.yellow)
//                        .frame(width: 300, height: 200)
//                }
//            }
//        }
    }
}

#Preview {
    LazyStacks()
}
