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
    
    var body: some View {
        VStack {
            Text("Arda view")
            
        }
        .frame(width: width / 1.2 , height: width / 1.2)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20)
        .blendMode(.darken)
        .padding()
    }
}

struct Lotch_Previews: PreviewProvider {
    static var previews: some View {
        Lotch()
    }
}
