//
//  BindingProperty.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct BindingProperty: View {
    @State var title = ""
    @State var isShow = false
    var body: some View {
        VStack {
            if isShow {
                Image("street")
                    .resizable()
                    .frame(height: 400)
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 300, height: 300)
                Text("")
            }
        }
        .frame(height: 500)
        ShowProfileButton(title: $title, isShow: $isShow)
    }
}

struct ShowProfileButton: View {
    @Binding var title: String
    @Binding var isShow: Bool
    var body: some View {
        Button(action: {
            isShow.toggle()
            title = "Ryan Kim"
            print(isShow)
        }, label: {
            Text("Show Profile")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
        })
    }
}

#Preview {
    BindingProperty()
}
