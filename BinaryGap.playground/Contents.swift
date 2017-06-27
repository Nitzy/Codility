//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let i = 2147483640

let value = String(i, radix: 2, uppercase: false)
let characters = Array(value.characters)
var prev = 0
var currentBG = 0
var highestBG = 0
for var i in characters.reversed(){
    print(i)
    if i == "0"{
        print("inside",i)
        if prev == 1 {
            currentBG += 1
            prev = 0
        } else {
            if currentBG > 0 {
                currentBG += 1
            }
        }
        print("curent",currentBG)

    } else {
        if prev == 0 {
            if highestBG < currentBG {
                highestBG = currentBG
                print("High",highestBG)
            }
            currentBG = 0
        }
        prev = 1
    }
}

print(Int(highestBG))