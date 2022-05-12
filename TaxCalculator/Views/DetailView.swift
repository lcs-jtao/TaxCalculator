//
//  DetailView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: Stored properties
    let expense: Expense
    
    // MARK: Computed property
    var body: some View {
        VStack(alignment: .leading) {
            Text(expense.date)
                .bold()
            Text("Original Price: $\(expense.preTaxPrice)")
                .font(.subheadline)
            Text("Price with Tax: $\(expense.postTaxPrice)")
                .font(.subheadline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            DetailView(expense: sampleExpense)
        }
    }
}
