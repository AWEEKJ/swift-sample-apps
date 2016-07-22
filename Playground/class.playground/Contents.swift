//: Playground - noun: a place where people can play

import UIKit

// class object
class Vehicle {
    var currentSpeed = 0.0 // stored property
    var description : String { // compyted property
        return "taveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() { // method
        
    }
}

let someVehicle = Vehicle()
print("Vehicle : \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 15.0
print("Bicycle : \(someBicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0

print("Tandem : \(someTandem.description)")


class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let someTrain = Train()
someTrain.makeNoise()

