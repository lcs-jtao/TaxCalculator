//
//  Jurisdiction.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-11.
//

import Foundation

struct Jurisdiction: Hashable {
    // MARK: Stored properties
    let id = UUID()
    let name: String
    let combinedTaxRate: Double
    let taxDescription: String
}

let provinces = [
    Jurisdiction(name: "Alberta",
                 combinedTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "British Columbia",
                 combinedTaxRate: 0.12,
                 taxDescription: "PST(7.0%) + GST(5.0%)")
    ,
    Jurisdiction(name: "Manitoba",
                 combinedTaxRate: 0.12,
                 taxDescription: "PST(7.0%) + GST(5.0%)")
    ,
    Jurisdiction(name: "Newfoundland and Labrador",
                 combinedTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "New Brunswick",
                 combinedTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Nova Scotia",
                 combinedTaxRate: 0.15,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Ontario",
                 combinedTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Prince Edward Island",
                 combinedTaxRate: 0.15,
                 taxDescription: "PST(10.0%) + GST(5.0%)")
    ,
    Jurisdiction(name: "Quebec",
                 combinedTaxRate: 0.145,
                 taxDescription: "PST(9.5%) + GST(5.0%)")
    ,
    Jurisdiction(name: "Saskatchewan",
                 combinedTaxRate: 0.10,
                 taxDescription: "PST(5.0%) + GST(5.0%)")
    ,
    Jurisdiction(name: "Northwest Territories",
                 combinedTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "Nunavut",
                 combinedTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "Yukon",
                 combinedTaxRate: 0.05,
                 taxDescription: "GST")
]
