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
