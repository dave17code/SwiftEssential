//
//  Overlay.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/20/24.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        Rectangle()
            .fill(Color.indigo)
            .frame(width: 200, height: 100)
            .cornerRadius(20)
            .overlay(alignment: .center) {
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.yellow)
                    .font(.title)
            }
            .overlay(alignment: .topLeading) {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.blue)
                    .font(.title)
            }
            .overlay(alignment: .topTrailing) {
                Image(systemName: "moon.stars.fill")
                    .foregroundColor(Color.red)
                    .font(.title)
            }
            .overlay(alignment: .bottomLeading) {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.yellow)
                    .font(.title)
            }
            .background(
                Circle()
                    .fill(Color.cyan)
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
    }
}

#Preview {
    Overlay()
}
