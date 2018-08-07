//
//  main.swift
//  Test
//
//  Created by lkp on 2018/7/23.
//  Copyright © 2018 lkp. All rights reserved.
//

import Foundation

let arr = [1,2,6]

let brr = arr.map{ "NO." + String($0) }
print(brr)
let drr = arr.flatMap{"NO." + String($0)}
print(drr)
//func someFuncClosure(closure: () -> Void) {
////    closure()
//    print("func body")
//
//}
//
//someFuncClosure() {
//    print("closure body")
//}

//func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//
//let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
//if let foundIndex = findIndex(ofString: "llama", in: strings) {
//    print("The index of llama is \(foundIndex)")
//}
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var a1 = 12
//var a2 = 34
//swapTwoInts(&a1, &a2)
//print("a1 = \(a1) a2 = \(a2)")


//class Dice {
//    let sides: Int
//    let generator: RandomNumberGenerator
//    init(sides: Int, generator: RandomNumberGenerator) {
//        self.sides = sides
//        self.generator = generator
//    }
//    func roll() -> Int {
//        return Int(generator.random() * Double(sides)) + 1
//    }
//}


//protocol SomeProtocol {
//    init()
//}
//
//class SomeSuperClass {
//    init() {
//        print("super class")
//    }
//}
//
//class SomeClass: SomeSuperClass, SomeProtocol {
//    required override init() {
//        print("current")
//    }
//}
//
//let c = SomeClass()



//protocol Togglable {
//    mutating func toggle()
//}
//
//enum OnOffSwitch: Togglable {
//    case off, on
//    mutating func toggle() {
//        switch self {
//        case .off:
//            self = .on
//        case .on:
//            self = .off
//        }
//    }
//}
//
//var lightSwitch = OnOffSwitch.off
//lightSwitch.toggle()
//print(lightSwitch)


//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Person: FullyNamed {
//    var fullName: String
//}
//
//let john = Person(fullName: "lkp")
//
//print(john.fullName)


//extension Int {
//    subscript(digitIndex: Int) -> Int {
//        var decimalBase = 1
//        for _ in 0..<digitIndex {
//            decimalBase *= 10
//        }
//        return (self / decimalBase) % 10
//    }
//}
//
//print(123[5])



//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}
//
//var someInt = 5
//someInt.square()
//
//print(someInt)

//struct Size {
//    var width = 0.0
//    var height = 0.0
//}
//
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}
//
//let defaultRect = Rect()
//let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
//
//extension Rect {
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width/2)
//        let originY = center.y - (size.height/2)
//        self.init(center: Point(x: originX, y: originY), size: size)
//    }
//}
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
//                      size: Size(width: 3.0, height: 3.0))
//print(centerRect)
//extension Double {
//    var km: Double { return self * 1_000.0 }
//    var m : Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1_000.0 }
//    var ft: Double { return self / 3.28084 }
//}
//let oneInch = 25.4.km
//print("One inch is \(oneInch) meters")
//// 打印 “One inch is 0.0254 meters”
//let threeFeet = 3.ft
//print("Three feet is \(threeFeet) meters")
//// 打印 “Three feet is 0.914399970739201 meters”


//class MediaItem {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Movie: MediaItem {
//    var director: String
//    init(name: String, director: String) {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem {
//    var artist: String
//    init(name: String, artist: String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//let library = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The One And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//
//var movieCount = 0
//var songCount = 0
//
//for item in library {
//    if item is Movie {
//        movieCount += 1
//    } else if item is Song {
//        songCount += 1
//    }
//}
//
//print("Media library contains \(movieCount) movies and \(songCount) songs")



//struct Item {
//    var price: Int
//    var count: Int
//}
//
//enum VendingMachineError: Error {
//    case invalidSelection                     //选择无效
//    case insufficientFunds(coinsNeeded: Int) //金额不足
//    case outOfStock                             //缺货
//}
//
//class VendingMachine {
//
//    var inventory = [
//        "Candy Bar": Item(price: 12, count: 7),
//        "Chips": Item(price: 10, count: 4),
//        "Pretzels": Item(price: 7, count: 11)
//    ]
//    var coinsDeposited = 0
//    func dispenseSnack(snack: String) {
//        print("Dispensing \(snack)")
//    }
//
//    func vend(itemNamed name: String) throws {
//        guard let item = inventory[name] else {
//            throw VendingMachineError.invalidSelection
//        }
//
//        guard item.count > 0 else {
//            throw VendingMachineError.outOfStock
//        }
//
//        guard item.price <= coinsDeposited else {
//            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
//        }
//
//        coinsDeposited -= item.price
//
//        var newItem = item
//        newItem.count -= 1
//        inventory[name] = newItem
//
//        print("Dispensing \(name)")
//
//    }
//}
//
//var vendingMachine = VendingMachine()
//vendingMachine.coinsDeposited = 8
//
//do {
//    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//} catch VendingMachineError.invalidSelection {
//    print("Invalid Selection.")
//} catch VendingMachineError.outOfStock {
//    print("Out of Stock.")
//} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
//    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
//}


//func testGuard(i:Int){
//    guard i > 0 else {
//        print("error")
//        return
//    }
//}
//testGuard(i: -8)
//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var numberOfRooms = 1
//}
//
//let john = Person()

//print("jj")
//class Person {
//    let name: String
//    init(name: String) { self.name = name }
//    var apartment: Apartment?
//    deinit { print("\(name) is being deinitialized") }
//}
//
//class Apartment {
//    let unit: String
//    init(unit: String) { self.unit = unit }
//    weak var tenant: Person?
//    deinit { print("Apartment \(unit) is being deinitialized") }
//}
//
//var john: Person?
//var unit4A: Apartment?
//
//john = Person(name: "John Appleseed")
//unit4A = Apartment(unit: "4A")
//
//john!.apartment = unit4A
//unit4A!.tenant = john
//
//john = nil
//unit4A = nil

//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "John Appleseed")
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//reference3 = nil



//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//        print("father class")
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//
//class RecipeIngredient: Food {
//    var quantity: Int
//    init(name: String, quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//        print("child class")
//    }
//    override convenience init(name: String) {
//        print("hhhh")
//        self.init(name: name, quantity: 1)
//    }
//}
//
//let r = RecipeIngredient()
//
//let oneBacon = RecipeIngredient(name: "Bacon")
//
//let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
//class ShoppingListItem {
//    var name: String?
//    var quantity = 1
//    var purchased = false
//}
//
//var item = ShoppingListItem()



//class SurveyQuestion {
//    var text: String
//    var response: String?
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}

//let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
//cheeseQuestion.ask()
//// 打印 "Do you like cheese?"
//cheeseQuestion.response = "Yes, I do like cheese."








//struct Celsius {
//    var temperatureInCelsius: Double
//    init(fromFahrenheit fahrenheit: Double) {
//        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
//    }
//    init(fromKelvin kelvin: Double) {
//        temperatureInCelsius = kelvin - 273.15
//    }
//}
//let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
//// boilingPointOfWater.temperatureInCelsius 是 100.0
//print(boilingPointOfWater)
//let freezingPointOfWater = Celsius(fromKelvin: 273.15)
//// freezingPointOfWater.temperatureInCelsius 是 0.0
//print(freezingPointOfWater)



//print("Hello, World!")

//class Vehicle {
//    var currentSpeed = 0.0
//    var description: String {
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//    func makeNoise() {
//        // 什么也不做-因为车辆不一定会有噪音
//    }
//}


//let someVehicle = Vehicle()
//
//print(someVehicle.description)
//
//class Bicycle: Vehicle {
//    var hasBasket = false
//}
//
//
//class Train: Vehicle {
//    override func makeNoise() {
//        print("Choo Choo")
//    }
//}
//
//let train = Train()
//train.makeNoise()

//struct Fahrenheit {
//    var temperature: Double
//    init() {
//        temperature = 32.0
//    }
//}
//var f = Fahrenheit()
//print("The default temperature is \(f.temperature)° Fahrenheit")


// 打印 "The default temperature is 32.0° Fahrenheit"


//let bicycle = Bicycle()
//
//print(bicycle.hasBasket)
//
//bicycle.hasBasket = true
//
//print(bicycle.hasBasket)
//
//bicycle.currentSpeed = 15.0
//print("Bicycle: \(bicycle.description)")

//struct Matrix {
//    let rows: Int, columns: Int
//    var grid: [Double]
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return grid[(row * columns) + column]
//        }
//        set {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//        }
//    }
//}
//
//var matrix = Matrix(rows: 2, columns: 2)
//
//print(matrix[1,1])
