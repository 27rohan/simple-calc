//
//  main.swift
//  calc
//
//  Created by Rohan Thakkar on 10/6/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

//print(a==Double(Int(a)))
func fact(n: Double) -> Double{
    if n==1{return 1}
    return fact(n:(n-1))*n
}

func count(array: [Double]) -> Int {
    return array.count
}

func avg(array: [Double]) -> Double {
    if count(array:array)==0{return 0}
    var sum = array[0]
    var i = 1
    while i < array.count{
    sum += array[i]
        i+=1
    }
    return sum/Double(count(array:array))
}

var inputs = [Double]()

var a:Double
if let i = readLine(strippingNewline: true){ //keyboard
    a = Double(i)!
    inputs.append(a)
}
else{
a = 0
}

var op = readLine(strippingNewline: true)!

var b:Double
if let i = readLine(strippingNewline: true){ //keyboard
    b = Double(i)!
    inputs.append(b)
}
else{
    b = 0
}

if op=="+"{
print("Result of operation = \(a+b)")

}
else if op=="-"{
    print("Result of operation = \(a-b)")
}
else if op=="*"{
    print("Result of operation = \(a*b)")
}
else if op=="/" && b != 0{
    print("Result of operation = \(a/b)")
}
else if op=="%" && b != 0 && a==Double(Int(a)) && b==Double(Int(b)){
    print("Result of operation = \(Int(a)%Int(b))")
}
else{
    print("Incorrect expression entered.")
}

if a>0 && a==Double(Int(a)){
    print("Factorial of first number is \(fact(n:a))")
}

if b>0 && b==Double(Int(b)){
    print("Factorial of second number is \(fact(n:b))")
}
 
print("Count of inputs is \(count(array:inputs))")
print("Average of inputs is \(avg(array:inputs))")
