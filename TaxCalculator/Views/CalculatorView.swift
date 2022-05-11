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
    @State var inputPrice = ""
    @State var expenseSaved = false
    
    // MARK: Computed properties
    var preTaxPrice: Double? {
        guard let preTaxPrice = Double(inputPrice),
              preTaxPrice > 0
        else {
            return nil
        }
        return preTaxPrice
    }
    
    var postTaxPrice: Double? {
        guard let preTaxPrice = preTaxPrice
        else {
            return nil
        }
        return preTaxPrice * (1 + selectedProvince.combinedTaxRate)
    }
    
    var outputPrice: String {
        if let postTaxPrice = postTaxPrice {
            let formattedValue = String(format: "%.2f", postTaxPrice)
            return "CAD \(formattedValue)"
        } else {
            return "Cannot currently be computed."
        }
    }
    
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
                    TextField("", text: $inputPrice, prompt: Text("Enter numerical value"))
                }
            }, header: {
                Text("Price before taxes")
            })
            
            Section(content: {
                HStack {
                    Text(outputPrice)
                    Spacer()
                    ZStack {
                        Button(action: {
                            expenseSaved = true
                            inputPrice = ""
                        }, label: {
                            Text("Save")
                        })
                            .buttonStyle(.bordered)
                            .opacity(expenseSaved == true || preTaxPrice == nil ? 0.0 : 1.0)
                    }
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
