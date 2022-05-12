//
//  TaxCalculatorApp.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

@main
struct TaxCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    CalculatorView(expenses: .constant([]))
                        .tabItem({
                            Image(systemName: "dollarsign.circle")
                            Text("Calculator")
                        })
                    HistoryView()
                        .tabItem({
                            Image(systemName: "cart")
                            Text("History")
                        })
                }
            }
        }
    }
}
