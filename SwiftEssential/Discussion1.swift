//
//  Discussion1.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/20/24.
//

import SwiftUI

struct Discussion1: View {
    var body: some View {
        //.frame
//        Image(systemName: "star.fill")
//            .font(.system(size: 60))
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        //Stacks
//        VStack {
//            Spacer()
//            HStack {
//                Spacer()
//                Image(systemName: "star.fill")
//                    .font(.system(size: 60))
//            }
//        }
        //.overlay
        Color.white
            .overlay(alignment: .bottomTrailing) {
                Image(systemName: "star.fill")
                    .font(.system(size: 60))
            }
    }
}

#Preview {
    Discussion1()
}
