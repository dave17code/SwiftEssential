//
//  IgnoreSafeAreaLayout.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct IgnoreSafeAreaLayout: View {
    var body: some View {
//        Color.orange
//            .ignoresSafeArea()
        VStack {
            Image("street")
            .resizable()
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: 400)
            Text("Ryan Kim")
                .font(.system(size: 30, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
        }
        Spacer()
            .frame(width: 20)
            .background(Color.red)
    }
}

#Preview {
    IgnoreSafeAreaLayout()
}
