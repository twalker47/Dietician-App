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

func harris(sex: Bool, weight: Double, height: Double, age: Double) -> Double {
    if (sex==true) {
        let result = 655.1 + 9.563 * weight + 1.85 * height - 4.676 * age
        return result
    }
    else {
        let result = 66.5 + 13.75 * weight + 5.003 * height - 6.75 * age
        return result
    }
}

func livingston(sex: Bool, weight: Double, age: Double) -> Double {
    if (sex==true) {
        let result = 293 * pow(weight, 0.4330) - 5.92 * age
        return result
    }
    else {
        let result = 248 * pow(weight, 0.4356) - 5.09 * age
        return result
    }
}

func pennState3(sex: Bool, weight: Double, height: Double, age: Double, v: Double, tMax: Double) -> Double {
    let result = 0.96 * mifflin(sex: sex, weight: weight, height: height, age: age) + v * 31 + tMax * 167 - 6212
    return result
}

func pennState2010(sex: Bool, weight: Double, height: Double, age: Double, v: Double, tMax: Double) ->Double{
    let result = 0.71 * mifflin(sex: sex, weight: weight, height: height, age:age) + v * 64 + tMax * 85 - 3085
    return result
}

func pennStateH(sex: Bool, weight: Double, height: Double, age: Double, tMax: Double) ->Double{
    let result = 0.94 * mifflin(sex: sex, weight: weight, height: height, age:age) + tMax * 186 - 6597
    return result
}

func kCalPerKG(weight: Double, kCalFactor: Double) -> Double{
    let result = kCalFactor * weight
    return result
}
