//
//  DetailView.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-09.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        List {
            VStack(alignment: .leading) {
                Text("2022/05/09")
                    .bold()
                Text("Original Price: $29.99")
                    .font(.subheadline)
                Text("Price with Tax: $33.89")
                    .font(.subheadline)
            }
        }
        .navigationTitle("History")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
        }
    }
}
