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
            HStack {
                Text(expense.date)
                    .bold()
                Spacer()
                Text(expense.category)
                    .bold()
                    .font(.subheadline.smallCaps())
                    .foregroundColor(.gray)
            }
            Text("Original Price: $\(expense.preTaxPrice, specifier: "%.2f")")
                .font(.subheadline)
            Text("Price with Tax: $\(expense.postTaxPrice, specifier: "%.2f")")
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
