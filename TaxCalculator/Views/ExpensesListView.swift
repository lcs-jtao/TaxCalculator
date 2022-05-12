//
//  ExpensesListView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-11.
//

import SwiftUI

struct ExpensesListView: View {
    
    // MARK: Stored properties
    @Binding var expenses: [Expense]
    var category: String
    
    // MARK: Computed property
    var body: some View {
        List(expenses) { currentExpense in
            if category == currentExpense.category {
                DetailView(expense: currentExpense)
            }
        }
        .navigationTitle(category)
    }
}

struct ExpensesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExpensesListView(expenses: .constant([]), category: "Grocery")
        }
    }
}
