import UIKit

print("Hello World!")

func sayHelloWorld() -> String{
    return "Hello World!"
}

func addTwoNumbers(firstNum: Int, secondNum:Int) -> Int{
    return firstNum + secondNum
}

func decide(myNum: Int) -> String{
    if (myNum < 10) {
        return "\(myNum) is less than 10"
    }
    else {
        return "\(myNum) is greater than or equal to 10"
    }
}

func doSomeMath(firstNum: Int, secondNum: Int) -> Int{
    var product = firstNum * secondNum
    return product
}

func letsTryFloats(firstFloat: Float, secondFloat: Float) -> Float{
    var product = firstFloat * secondFloat
    return product
}

func decideWithBool(yesOrNo: Bool) -> String{
    if (yesOrNo == true) {
        return "Yes!"
    }
    else {
        return "No!"
    }
}

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
/*
func mifflin(sex: Bool, weight: Float, height: Float, age: Float) ->Float{
    var result: Float
    if (sex == true) { //proceeds with algorithm for if patient is male
        result = 5 + 10 * weight + 6.25 * height - 5 * age
    }
    else {
        result = -161 + 10 * weight + 6.25 * height - 5 * age
    }
    return result
    return 0.0
}
*/


print(sayHelloWorld())
print(addTwoNumbers(firstNum: 2, secondNum: 2))
print(decide(myNum: 4))
print(decide(myNum: 25))
print(doSomeMath(firstNum: 10, secondNum: 4))
print(letsTryFloats(firstFloat: 10.0, secondFloat: 4.0))
print(decideWithBool(yesOrNo: true))
print(decideWithBool(yesOrNo: false))
print(mifflin(sex: true, weight: 100, height: 180, age: 60))
print(mifflin(sex: false, weight: 100, height: 180, age: 60))


//print(mifflin(sex: true, weight: 100, height: 180, age: 60))*/



