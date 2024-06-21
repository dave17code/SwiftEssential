//
//  StateProperty.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct StateProperty: View {
    @State var changeWidth: CGFloat = 200
    @State var title = "@State"
    @State var backColor = Color.yellow
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backColor)
            .frame(width: changeWidth, height: 100)
            Text(title)
                .font(.title)
        }
        Text("Width is \(Int(changeWidth))")
        HStack(spacing: 50) {
            // - button
            Button(action: {
                changeWidth = changeWidth - 10
                title = "(-) Button"
                backColor = Color.purple
            }, label: {
                Text("-")
                    .font(.system(size: 30, weight: .semibold))
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.pink)
                    .clipShape(Circle())
            })
            // + button
            Button(action: {
                changeWidth = changeWidth + 10
                title = "(+) Button"
                backColor = Color.cyan
            }, label: {
                Text("+")
                    .font(.system(size: 30, weight: .semibold))
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.pink)
                    .clipShape(Circle())
            })
        }
    }
}

#Preview {
    StateProperty()
}
