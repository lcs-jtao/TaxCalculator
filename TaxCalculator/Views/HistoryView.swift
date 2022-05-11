//
//  HistoryView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                DetailView()
            }, label: {
                Text("Grocery")
            })
            NavigationLink(destination: {
                DetailView()
            }, label: {
                Text("Clothing")
            })
            NavigationLink(destination: {
                DetailView()
            }, label: {
                Text("Personal Care")
            })
            NavigationLink(destination: {
                DetailView()
            }, label: {
                Text("Education")
            })
            NavigationLink(destination: {
                DetailView()
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
            HistoryView()
        }
    }
}
