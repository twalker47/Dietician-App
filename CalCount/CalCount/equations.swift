//
//  mifflin.swift
//  Dietician App
//
//  Created by Greg Young on 9/20/22.
//

import Foundation

func mifflin(sex: Bool, weight: Double, height: Double, age: Double, cm: Bool, kg: Bool) -> [Double]{
    var results:[Double] = []
    var result10 = 0.0
    if (cm == false) && (kg == true){
        if (sex == true) {
            result10 = 5 + 10 * weight + 6.25 * height * 2.54 - 5 * age
            results.append(round(result10))
        }
        else {
            result10 = -161 + 10 * weight + 6.25 * height * 2.54 - 5 * age
            results.append(round(result10))
        }
    }
    else if (cm == false) && (kg == false){
        if (sex == true) {
            result10 = 5 + 10 * weight/2.2 + 6.25 * height * 2.54 - 5 * age
            results.append(round(result10))
        }
        else {
            result10 = -161 + 10 * weight/2.2 + 6.25 * height * 2.54 - 5 * age
            results.append(round(result10))
        }
    }
    else if (cm == true) && (kg == false){
        if (sex == true) {
            result10 = 5 + 10 * weight/2.2 + 6.25 * height - 5 * age
            results.append(round(result10))
        }
        else {
            result10 = -161 + 10 * weight/2.2 + 6.25 * height - 5 * age
            results.append(round(result10))
        }
    }
    else {
        if (sex == true) {
            result10 = 5 + 10 * weight + 6.25 * height - 5 * age
            results.append(round(result10))
        }
        else {
            result10 = -161 + 10 * weight + 6.25 * height - 5 * age
            results.append(round(result10))
        }
    }
    let result11 = round(1.1 * result10)
    results.append(result11)
    let result12 = 1.2 * result10
    results.append(result12)
    let result13 = round(1.3 * result10)
    results.append(result13)
    let result14 = round(1.4 * result10)
    results.append(result14)
    let result15 = round(1.5 * result10)
    results.append(result15)
    
    return results
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
