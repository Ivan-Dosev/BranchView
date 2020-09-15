//
//  ContentView.swift
//  BranchView
//
//  Created by Ivan Dosev Dimitrov on 15.09.20.
//  Copyright © 2020 Ivan Dosev Dimitrov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShow : Bool = false
    
    var body: some View {
        VStack {
            VStack {
                if isShow {
                           PickerDossiView()
                }else{
                           Lotch()
                }
                       
                
            }.edgesIgnoringSafeArea(.top)
            Spacer()
            Button(action: {
                self.isShow.toggle()
            }) {
                Text(self.isShow ? "start" : "stop")
                    .padding()
                    .background(Color.gray.opacity(0.3))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
