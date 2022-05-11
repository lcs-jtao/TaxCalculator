//
//  CalculatorView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct CalculatorView: View {
    
    // MARK: Stored properties
    // What province was selected
    @State var selectedProvince: Jurisdiction = Jurisdiction(name: "Ontario",
                                                        combinedTaxRate: 0.13,
                                                        taxDescription: "HST")
    
    // MARK: Computed properties
    var body: some View {
        Form {
            
            Section(content: {
                Picker(selection: $selectedProvince,
                       label: Text("Province"),
                       content: {
                    ForEach(provinces, id: \.self) { currentProvince in
                        Text(currentProvince.name).tag(currentProvince).font(.body)
                    }
                })
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: UIScreen.main.bounds.width - 30, height: 30)
                    .clipped()
            }, header : {
                Text("Select Jurisdiction")
            })
            
            Section(content: {
                Picker(selection: .constant(""),
                       label: Text("Category"),
                       content: {
                    Text("Grocery").tag(0).font(.body)
                    Text("Clothing").tag(1).font(.body)
                    Text("Personal Care").tag(2).font(.body)
                    Text("Education").tag(3).font(.body)
                    Text("Household").tag(4).font(.body)
                })
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: UIScreen.main.bounds.width - 30, height: 30)
                    .clipped()
            }, header: {
                Text("Select item category")
            })
            
            Section(content: {
                Text("\(selectedProvince.taxDescription): \(selectedProvince.combinedTaxRate * 100, specifier: "%.1f")%")
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
                    Spacer()
                    Button(action: {
                        print("Button was pressed")
                    }, label: {
                        Text("Save")
                    })
                        .buttonStyle(.bordered)
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
