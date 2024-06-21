//
//  ListLayout.swift
//  SwiftEssential
//
//  Created by 김두운 on 6/21/24.
//

import SwiftUI

struct ListLayout: View {
    @State var showSectionArrow = true
    @State var cars = [
        "Hyundai",
        "KIA",
        "Tesla",
        "BMW",
        "Mercedes"
    ]
    
    var body: some View {
        List {
            Section("Car Brands", isExpanded: $showSectionArrow) {
                ForEach(cars, id: \.self) { car in
                    Text("\(car)")
                }
                .onDelete(perform: { indexSet in
                    cars.remove(atOffsets: indexSet)
                })
            }
            Section("Detail") {
                Text("GV 80")
                Text("K5")
                Text("Y Model")
                Text("BMW 520")
                Text("E Class")
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    ListLayout()
}
