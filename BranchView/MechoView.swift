//
//  MechoView.swift
//  BranchView
//
//  Created by Ivan Dosev Dimitrov on 15.09.20.
//  Copyright © 2020 Ivan Dosev Dimitrov. All rights reserved.
//

import SwiftUI

struct MechoView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.2)
            edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(0..<10) { index in
                      Text("mecho View \(index)")
                        .padding()
                }
              
            }
        }
    }
}

struct MechoView_Previews: PreviewProvider {
    static var previews: some View {
        MechoView()
    }
}
