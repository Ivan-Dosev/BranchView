//
//  Lotch.swift
//  BranchView
//
//  Created by Ivan Dosev Dimitrov on 15.09.20.
//  Copyright © 2020 Ivan Dosev Dimitrov. All rights reserved.
//

import SwiftUI

struct Lotch: View {
    
     var width = UIScreen.main.bounds.width
     var selections: [Int]
    
    var body: some View {
        VStack {
            Text("hours - \(selections[0])")
             Text("minuts - \(selections[1])")
             Text("secund - \(selections[2])")
            
        }
        .frame(width: width / 1.2 , height: width / 1.2)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20)
        .blendMode(.darken)
        .padding()
    }
}


