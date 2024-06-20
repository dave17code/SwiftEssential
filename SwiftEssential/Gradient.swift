//
//  Gradient.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/13/24.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(colors: [.cyan, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 200, height: 200)
            .cornerRadius(20)
    }
}

#Preview {
    Gradient()
}
