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
    Category(name: "Necessities", image: "cart")
    ,
    Category(name: "Non-Essentials", image: "eyebrow")
]
