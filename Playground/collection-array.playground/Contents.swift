//: Playground - noun: a place where people can play

import UIKit

// mutable array
var comment:Array<String> = []
var comment2: [String] = []
comment2.append("Anna")
comment2.append("Alex")
comment2.append("Brian")
comment2.append("Jack")

var comment3 = ["Anna", "Alex", "Brian", "Jack"]

comment3 += ["Choi"]
comment3 += ["Jin"]
comment3 += ["Kim"]

print(comment3)

comment3[1] = "Tim"

comment3[2...4] = ["Lee", "Park", "Song"]

print(comment3)


// immutable array
let comment4 = ["Anna", "Alex", "Brian", "Jack"]
