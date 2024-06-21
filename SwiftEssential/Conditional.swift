//
//  Conditional.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct Conditional: View {
    @State var userLogin = false
    @State var userName = "Ryan"
    @State var following = false
    
    var body: some View {
//        if userName == "Ryan" {
//            Color.yellow
//        } else {
//            Color.pink
//        }
        if following {
            Text("Following")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
        } else {
            Text("Follow")
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .frame(width: 100, height: 50)
                .border(Color.black)
                .shadow(radius: 10)
        }
    }
}

#Preview {
    Conditional()
}
