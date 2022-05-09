//
//  CalculatorView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct CalculatorView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        Form {
            
            Section(content: {
                Picker(selection: .constant(""),
                       label: Text("Province"),
                       content: {
                    Text("Alberta").tag(0).font(.body)
                    Text("British Columbia").tag(1).font(.body)
                    Text("Manitoba").tag(2).font(.body)
                    Text("Ontario").tag(3).font(.body)
                    Text("Prince Edward Island").tag(4).font(.body)
                })
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: 200, height: 30)
                    .clipped()
            }, header : {
                Text("Select Jurisdiction")
            })
            
            Section(content: {
                Text("HST: 13.0%")
            }, header: {
                Text("Applied Tax Rate")
            })
            
            Section(content: {
                HStack {
                    Text("CAD")
                    TextField("", text: .constant(""), prompt: Text("Enter numerical value"))
                }
            }, header: {
                Text("Price before taxes")
            })
            
            Section(content: {
                HStack {
                    Text("CAD")
                    Text("33.89")
                }
            }, header: {
                Text("Price after taxes")
            })
        }
        .navigationTitle("Tax Calculator")
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculatorView()
        }
    }
}
