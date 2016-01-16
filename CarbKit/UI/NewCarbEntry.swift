//
//  NewCarbEntry.swift
//  Naterade
//
//  Created by Nathan Racklyeft on 1/15/16.
//  Copyright © 2016 Nathan Racklyeft. All rights reserved.
//

import Foundation


struct NewCarbEntry: CarbEntry {
    var amount: Double
    var startDate: NSDate
    var foodType: String?
    var absorptionTime: NSTimeInterval?
    let createdByCurrentApp = true
}