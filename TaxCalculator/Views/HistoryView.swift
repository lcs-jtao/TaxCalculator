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
        NavigationView {
            List {
                ForEach(listOfCategories) { currentCategory in
                    NavigationLink(destination: {
                        ExpensesListView(expenses: $expenses, category: currentCategory.name)
                    }, label: {
                        HStack {
                            Text(currentCategory.name)
                            Image(systemName: currentCategory.image)
                        }
                    })
                }
            }
            .navigationTitle("Expense History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(expenses: .constant([]))
    }
}
