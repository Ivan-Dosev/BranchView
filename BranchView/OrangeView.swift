//
//  OrangeView.swift
//  BranchView
//
//  Created by Ivan Dosev Dimitrov on 15.09.20.
//  Copyright © 2020 Ivan Dosev Dimitrov. All rights reserved.
//

import SwiftUI

struct OrangeView: View {
    var body: some View {
        VStack {
            Color.orange.opacity(0.3)
            
            VStack {
                ForEach(0..<5) { index in
                   Text("Orange\(index)")
                    .padding()
                }
               
            }
        }
    }
}

struct OrangeView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeView()
    }
}
