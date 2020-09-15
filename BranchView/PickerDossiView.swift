//
//  PickerDossiView.swift
//  BranchView
//
//  Created by Ivan Dosev Dimitrov on 15.09.20.
//  Copyright © 2020 Ivan Dosev Dimitrov. All rights reserved.
//

import SwiftUI

struct PickerDossiView: View {
    
    var width = UIScreen.main.bounds.width
    
    private let data: [[String]] = [
        Array(0...24).map { "\($0)" + " h"},
        Array(0...60).map { "\($0)" + " m"},
        Array(0...60).map { "\($0)" + " s"}
    ]

    @State private var selections: [Int] = [1, 0, 0]
    
    var body: some View {
        
        VStack {
            ZStack{
                Text("     \(selections[0]) hour")
                    .offset(x: -110)
                Text("     \(selections[1]) minute")
                Text("     \(selections[2]) second")
                    .offset(x: 110)
            }
            .frame(width: width / 1.2, height: 50)
            .background(Color.black.opacity(0.2))
            .cornerRadius(10)
            
            VStack {
                PickerView(data: self.data, selections: self.$selections)
                    .frame(width: width / 1.2)
            }
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        } .frame(width: width / 1.2 , height: width / 1.2)
    }
}

struct PickerDossiView_Previews: PreviewProvider {
    static var previews: some View {
        PickerDossiView()
    }
}

struct PickerView: UIViewRepresentable {
    var data: [[String]]
    @Binding var selections: [Int]

    //makeCoordinator()
    func makeCoordinator() -> PickerView.Coordinator {
        Coordinator(self)
    }

    //makeUIView(context:)
    func makeUIView(context: UIViewRepresentableContext<PickerView>) -> UIPickerView {
        let picker = UIPickerView(frame: .zero)
        
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        
        return picker
    }

    //updateUIView(_:context:)
    func updateUIView(_ view: UIPickerView, context: UIViewRepresentableContext<PickerView>) {
        for i in 0...(self.selections.count - 1) {
            view.selectRow(self.selections[i], inComponent: i, animated: false)
        }
    }

    class Coordinator: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
        var parent: PickerView

        //init(_:)
        init(_ pickerView: PickerView) {
            self.parent = pickerView
        }

        //numberOfComponents(in:)
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return self.parent.data.count
        }

        //pickerView(_:numberOfRowsInComponent:)
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return self.parent.data[component].count
        }

        //pickerView(_:titleForRow:forComponent:)
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return self.parent.data[component][row]
        }

        //pickerView(_:didSelectRow:inComponent:)
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            self.parent.selections[component] = row
        }
    }
}
