//
//  Jurisdiction.swift
//  TaxCalculator
//
//  Created by Joyce Tao on 2022-05-11.
//

import Foundation

struct Jurisdiction: Identifiable {
    // MARK: Stored properties
    let id = UUID()
    let name: String
    let combineTaxRate: Double
    let taxDescription: String
}

let provinces = [
    Jurisdiction(name: "Alberta",
                 combineTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "British Columbia",
                 combineTaxRate: 0.12,
                 taxDescription: "PST (7.0%) + GST (5.0%)")
    ,
    Jurisdiction(name: "Manitoba",
                 combineTaxRate: 0.12,
                 taxDescription: "PST (7.0%) + GST (5.0%)")
    ,
    Jurisdiction(name: "Newfoundland and Labrador",
                 combineTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "New Brunswick",
                 combineTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Nova Scotia",
                 combineTaxRate: 0.15,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Ontario",
                 combineTaxRate: 0.13,
                 taxDescription: "HST")
    ,
    Jurisdiction(name: "Prince Edward Island",
                 combineTaxRate: 0.15,
                 taxDescription: "PST (10.0%) + GST (5.0%)")
    ,
    Jurisdiction(name: "Quebec",
                 combineTaxRate: 0.145,
                 taxDescription: "PST (9.5%) + GST (5.0%)")
    ,
    Jurisdiction(name: "Saskatchewan",
                 combineTaxRate: 0.10,
                 taxDescription: "PST (5.0%) + GST (5.0%)")
    ,
    Jurisdiction(name: "Northwest Territories",
                 combineTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "Nunavut",
                 combineTaxRate: 0.05,
                 taxDescription: "GST")
    ,
    Jurisdiction(name: "Yukon",
                 combineTaxRate: 0.05,
                 taxDescription: "GST")
]
