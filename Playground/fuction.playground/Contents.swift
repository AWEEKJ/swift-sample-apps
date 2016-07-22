//: Playground - noun: a place where people can play

import UIKit

func sayHello() {
    print("Hello")
}

sayHello()

func sayHello2(name : String) {
    print("Hello \(name)")
}

sayHello2("Nick")

func sayHello3(name : String = "James") {
    print("Hello \(name)")
}

sayHello3()
sayHello3("John")

func sayHello4(name : String = "James", age : Int) -> String {
    return "\(name) is \(age) years old"
}
sayHello4("Choi", age: 3)
sayHello4(age: 3)

func sayHello5(_name name : String = "James", _age age : Int) -> String {
    return "\(name) is \(age) years old"
}
sayHello5(_name: "Park", _age: 3)
sayHello5(_age: 3)


func sayHello6(name : String = "James", _ age : Int) -> String {
    return "\(name) is \(age) years old"
}
sayHello6("Kim",3)



