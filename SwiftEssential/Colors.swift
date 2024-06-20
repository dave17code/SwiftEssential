//
//  Colors.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/13/24.
//

import SwiftUI

struct Colors: View {
    let customColor = #colorLiteral(red: 0.4645760828, green: 0.6073241162, blue: 1, alpha: 1)
    var body: some View {
        Circle()
            .fill(Color("modeColor"))
            .frame(width: 200, height: 200)
    }
}

#Preview {
    Colors()
}
