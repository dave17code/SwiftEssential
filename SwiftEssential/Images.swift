//
//  Images.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/13/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("flowers")
            .resizable()
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 300)
            .cornerRadius(300 / 2)
//            .cornerRadius(20)
//            .clipped()
//            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    Images()
}
