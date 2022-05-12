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
    
    // MARK: Computed property
    var body: some View {
        List(expenses) { currentExpense in
            DetailView(expense: currentExpense)
        }
        .navigationTitle("History")
    }
}

struct ExpensesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExpensesListView(expenses: .constant([]))
        }
    }
}
