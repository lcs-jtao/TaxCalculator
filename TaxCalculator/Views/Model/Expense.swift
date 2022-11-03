//
//  Expense.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-11.
//

import Foundation

struct Expense: Identifiable {
    // MARK: Stored properties
    let id = UUID()
    let category: String
    let date: String
    let preTaxPrice: Double
    let postTaxPrice: Double
}

let sampleExpense = Expense(category: "Necessities",
                            date: DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.short, timeStyle: DateFormatter.Style.short),
                            preTaxPrice: 29.99,
                            postTaxPrice: 33.89)
