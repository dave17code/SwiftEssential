//
//  Conditional2.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct Conditional2: View {
    @State var showProfile = false
    
    var body: some View {
        Button(action: {
            showProfile.toggle()
        }, label: {
            Text("ShowProfile")
        })
        Image(showProfile ? "street" : "pretty")
            .resizable()
            .frame(height: 400)
            .clipShape(RoundedRectangle(cornerRadius: showProfile ? 30 : 0))
        
//        if showProfile {
//            Image("street")
//                .resizable()
//                .frame(height: 400)
//        } else {
//            Image("pretty")
//                .resizable()
//                .frame(height: 400)
//        }
    }
}

#Preview {
    Conditional2()
}
