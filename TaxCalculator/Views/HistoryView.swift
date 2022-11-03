//
//  HistoryView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct HistoryView: View {
    
    // MARK: Stored properties
    @Binding var expenses: [Expense]
    
    // Tracks what results should be visible currently
    @State private var selectedExpenseVisibility: ExpenseVisibility = .all
    
    // MARK: Computed property
    var body: some View {
        // Control filtering of prior tasks
        VStack {
            // Label for picker
            Text("Filter by...")
                .font(Font.caption.smallCaps())
                .foregroundColor(.secondary)
            
            // Picker to allow user to select what tasks to show
            Picker("Filter", selection: $selectedExpenseVisibility) {
                Text(ExpenseVisibility.all.rawValue)
                    .tag(ExpenseVisibility.all)
                Text(ExpenseVisibility.necessities.rawValue)
                    .tag(ExpenseVisibility.necessities)
                Text(ExpenseVisibility.nonEssentials.rawValue)
                    .tag(ExpenseVisibility.nonEssentials)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            List(filtered(expenses, by: selectedExpenseVisibility)) { currentExpense in
                DetailView(expense: currentExpense)
            }
        }
    }
    
    
    // MARK: Functions
    // Filter the list of expenses to be shown
    func filtered(_ expenses: [Expense], by visibility: ExpenseVisibility) -> [Expense] {
        if visibility == .all {
            return expenses
        } else {
            var filteredExpenses: [Expense] = []
            for currentExpense in expenses {
                if visibility == .necessities && currentExpense.category == "Necessities" {
                    filteredExpenses.insert(currentExpense, at: 0)
                } else if visibility == .nonEssentials && currentExpense.category == "Non-Essentials" {
                    filteredExpenses.insert(currentExpense, at: 0)
                }
            }
            return filteredExpenses
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(expenses: .constant([]))
    }
}
