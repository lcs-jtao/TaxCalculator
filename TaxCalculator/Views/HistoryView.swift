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
            ForEach(listOfCategories) { currentCategory in
                NavigationLink(destination: {
                    ExpensesListView(expenses: $expenses, category: currentCategory.name)
                }, label: {
                    Text(currentCategory.name)
                })
            }
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
