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
    @State var selectedCategory: Category = Category(name: "Necessities",
                                                     image: "cart")
    @State var inputPrice = ""
    @State var expenseSaved = false
    @Binding var expenses: [Expense]
    
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
        NavigationView {
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
                        .frame(idealHeight: 10, maxHeight: .infinity)
                        .clipped()
                }, header : {
                    Text("Select Jurisdiction")
                })
                
                Section(content: {
                    Picker(selection: $selectedCategory,
                           label: Text("Category"),
                           content: {
                        ForEach(listOfCategories, id: \.self) { currentCategory in
                            Text(currentCategory.name).tag(currentCategory)
                                .font(.body)
                        }
                    })
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: UIScreen.main.bounds.width - 30, height: 30)
                        .frame(idealHeight: 10, maxHeight: .infinity)
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
                            .foregroundColor(preTaxPrice == nil ? Color.red : Color.primary)
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
                                saveExpense()
                            }, label: {
                                HStack {
                                    Text("Save")
                                    Image(systemName: "checkmark.icloud")
                                }
                                .foregroundColor(.blue)
                            })
                                .buttonStyle(.bordered)
                                .opacity(expenseSaved == true || preTaxPrice == nil ? 0.0 : 1.0)
                            Button(action: {
                                inputPrice = ""
                                expenseSaved = false
                            }, label: {
                                Text("Clear")
                                    .foregroundColor(.blue)
                            })
                                .buttonStyle(.bordered)
                                .opacity(expenseSaved == true ? 1.0 : 0.0)
                        }
                    }
                }, header: {
                    Text("Price after taxes")
                })

            }
            .navigationTitle("Tax Calculator")
        }
    }
    
    // MARK: Functions
    func saveExpense() {
        let newExpense = Expense(category: selectedCategory.name,
                                 date: DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.short, timeStyle: DateFormatter.Style.short),
                                 preTaxPrice: preTaxPrice!,
                                 postTaxPrice: postTaxPrice!)
        expenses.insert(newExpense, at: 0)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(expenses: .constant([]))
    }
}
