//
//  mifflin.swift
//  Dietician App
//
//  Created by Greg Young on 9/20/22.
//

import Foundation

func correctHeightUnits(height: Double, cm: Bool) -> Double {
    if (cm == false){
        return height * 2.54
    }
    else {
        return height
    }
}

func correctWeightUnits(weight: Double, kg: Bool) -> Double {
    if (kg == false){
        return weight / 2.2
    }
    else {
        return weight
    }
}

func mifflin(sex: Bool, weight: Double, height: Double, age: Double) -> Double {
    if (sex == true) {
        let result = 5 + 10 * weight + 6.25 * height - 5 * age
        return result
    }
    else {
        let result = -161 + 10 * weight + 6.25 * height - 5 * age
        return result
    }
}

/*
func pennStateH(sex: Bool, weight: Float, height: Float, age: Float, tMax: Float) ->Float{
    let result = 0.94 * mifflin(sex: sex, weight: weight, height: height, age:age) + tMax * 186 - 6597
    return result
}

func pennState2010(sex: Bool, weight: Float, height: Float, age: Float, v: Float, tMax: Float) ->Float{
    let result = 0.71 * mifflin(sex: sex, weight: weight, height: height, age:age) + v * 64 + tMax * 85 - 3085
    return result
}
*/
