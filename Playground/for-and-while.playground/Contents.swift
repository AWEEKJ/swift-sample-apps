//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var age = 0
while age < 5 {
    print(age)
    age += 1
}

for var age2 = 0; age2 <= 5; age2 += 1 {
    print("age2 : \(age2)")
}

for _ in 1...5 {
    print("5")
}

for number in 1...5 {
    print(number)
}

for name in ["Anna", "Alex", "Brian", "Jack"] {
    print("hello, \(name)")
}

for (animalName, legs) in ["ant":6, "snake":0, "cheetah":4] {
    print("\(animalName)'s have \(legs) legs")
}