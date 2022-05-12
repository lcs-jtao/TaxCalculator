//
//  Category.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-12.
//

import Foundation

struct Category: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
}

let listOfCategories = [
    Category(name: "Grocery", image: "cart")
    ,
    Category(name: "Clothing", image: "tag")
    ,
    Category(name: "Personal Care", image: "eyebrow")
    ,
    Category(name: "Education", image: "books.vertical")
    ,
    Category(name: "Household", image: "bed.double")
]
