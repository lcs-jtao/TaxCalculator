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
}

let listOfCategories = [
    Category(name: "Grocery")
    ,
    Category(name: "Clothing")
    ,
    Category(name: "Personal Care")
    ,
    Category(name: "Education")
    ,
    Category(name: "Household")
]
