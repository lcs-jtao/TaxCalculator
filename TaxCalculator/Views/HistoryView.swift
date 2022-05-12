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
    
    // MARK: Computed property
    var body: some View {
        List {
            NavigationLink(destination: {
                ExpensesListView(expenses: $expenses)
            }, label: {
                Text("Grocery")
            })
            NavigationLink(destination: {
                ExpensesListView(expenses: $expenses)
            }, label: {
                Text("Clothing")
            })
            NavigationLink(destination: {
                ExpensesListView(expenses: $expenses)
            }, label: {
                Text("Personal Care")
            })
            NavigationLink(destination: {
                ExpensesListView(expenses: $expenses)
            }, label: {
                Text("Education")
            })
            NavigationLink(destination: {
                ExpensesListView(expenses: $expenses)
            }, label: {
                Text("Household")
            })
        }
        .navigationTitle("Expense History")
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HistoryView(expenses: .constant([]))
        }
    }
}
