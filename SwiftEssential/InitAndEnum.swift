//
//  InitAndEnum.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/20/24.
//

import SwiftUI

struct InitAndEnum: View {
    let backgroundColor: Color
    let country: String
    let title: String
    
    init(country: String, brand: CarBrand) {
        self.country = country
        if country == "Korea" {
            self.title = "Hyundai"
            self.backgroundColor = Color.yellow
        } else {
            self.title = "Tesla"
            self.backgroundColor = Color.pink
        }
    }
    
    //enum
    enum CarBrand {
        case Hyundai
        case Tesla
    }
    
    var body: some View {
        VStack {
            Text(country)
                .font(.system(size: 20, weight: .semibold))
            Text(title)
                .font(.system(size: 20, weight: .bold))
        }
        .foregroundStyle(Color.white)
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .clipShape(Circle())
    }
}

#Preview {
    HStack {
        InitAndEnum(country: "Korea", brand: .Hyundai)
        InitAndEnum(country: "US", brand: .Tesla)
    }
}
