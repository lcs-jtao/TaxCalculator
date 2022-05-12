//
//  TaxCalculatorApp.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

@main
struct TaxCalculatorApp: App {
    
    // MARK: Stored properties
    @State var expenses: [Expense] = []
    
    // MARK: Computed property
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    CalculatorView(expenses: $expenses)
                        .tabItem({
                            Image(systemName: "dollarsign.circle")
                            Text("Calculator")
                        })
                    HistoryView(expenses: $expenses)
                        .tabItem({
                            Image(systemName: "cart")
                            Text("History")
                        })
                }
            }
        }
    }
}
