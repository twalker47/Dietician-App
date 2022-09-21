//
//  mifflin.swift
//  Dietician App
//
//  Created by Greg Young on 9/20/22.
//

import Foundation

func mifflin(sex: Bool, weight: Float, height: Float, age: Float) -> Float{
    if (sex == true) {
        let result = 5 + 10 * weight + 6.25 * height - 5 * age
        return result
    }
    else {
        let result = -161 + 10 * weight + 6.25 * height - 5 * age
        return result
    }
}
