//
//  ExtractSubView.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        ScrollView {
            Subview(userName: "Ryan Kim", postImage: "pretty")
            Subview(userName: "Shawn Kim", postImage: "street")
        }
        .padding()
    }
}

struct Subview: View {
    let userName: String
    let postImage: String
    
    var body: some View {
        VStack {
            HStack {
                Image("flowers")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text(userName)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 12)
            Image(postImage)
                .resizable()
                .frame(height: 400)
        }
    }
}

#Preview {
    ExtractSubView()
}
