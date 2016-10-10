//
//  main.swift
//  calc
//
//  Created by Rohan Thakkar on 10/6/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

func fact(n: Double) -> Int{
    if n==1{return 1}
    return fact(n:(n-1))*Int(n)
}

func avg(array: [Double]) -> Double {
    if array.count==0{return 0}
    var sum = array[0]
    var i = 1
    while i < array.count{
    sum += array[i]
        i+=1
    }
    return sum/Double(array.count)
}


func transform_array(array:[String]) -> [Double]{
    var transformed_array = [Double]()

    for i in array{
        transformed_array.append(Double(i)!)
    }
    return transformed_array
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

print("Now, please try 'count','avg' or 'fact'")

var statement = readLine(strippingNewline: true)!
var entries = statement.components(separatedBy: " ")
var command = entries.last

entries.remove(at: entries.count-1)

var transformed_entries = transform_array(array:entries)

if command=="count"{
    print(transformed_entries.count)
}

else if command == "avg"{
    print(avg(array:transformed_entries))
}

else if command == "fact"{
    if transformed_entries.count>1{
        print("Sorry, 'fact' works on only 1 input at a time.")
    }
    else{
        print(fact(n:transformed_entries[0]))
    }
}
else{
    print("Incorrect command. Valid ones are 'count','avg' and 'fact'")
}

