//
//  ViewController.swift
//  swifstudy
//
//  Created by lkp on 2018/7/19.
//  Copyright © 2018 lkp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let a = nil;
//        var a = nil;
//        print("value =  ");
//        var someInts = [Int]()
//        print("someInts is of type [Int] with \(someInts.count) items.")
//        var threeDoubles = Array(repeating: 0.0, count: 3)
//        print(threeDoubles)
//        var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
//        // anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]
//
//        var sixDoubles = threeDoubles + anotherThreeDoubles
//        // sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
//        print(sixDoubles)
//
//        var shoppingList = ["Eggs", "Milk"]
//        if shoppingList.isEmpty {
//            print("The shopping list is empty.")
//        } else {
//            print("The shopping list is not empty.")
//        }
//        shoppingList.append("Flour")
//        print(shoppingList)
//        shoppingList += ["Baking Powder"]
//        // shoppingList 现在有四项了
//        print(shoppingList)
//        shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
//        // shoppingList 现在有七项了
//        print(shoppingList)
//        var firstItem = shoppingList[0]
//        print(firstItem)
//        shoppingList.insert("Maple Syrup", at: 0);
//        print(shoppingList)
//        let mapleSyrup = shoppingList.remove(at: 0)
//        print(mapleSyrup)
//        for item in shoppingList {
//            print(item)
//        }
//        var dic:[String: Any] = ["key":"valeu","key1":2]
//        print(dic)
//        let integerToDescribe = 3
//        var description = "The number \(integerToDescribe) is"
//        switch integerToDescribe {
//        case 2, 3, 5, 7, 11, 13, 17, 19:
//            description += " a prime number, and also"
//            fallthrough
//        case 23:
//            description += " 😁22"
//        case 24:
//            description += " 😁35"
//        default:
//            description += " an integer."
//        }
//        print(description)
//        print(methodName(i: 6));
//        var someInt = 3
//        var anotherInt = 107
//        swapTwoInts(&someInt, &anotherInt)
//        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
//        var str = "hh"
//        let str1 = "456"
//        str.append("C")
//        print(str);
//
//
        var completionHandlers: [() -> Void] = []
//
        func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
            completionHandlers.append(completionHandler)
        }
        
        func someFunctionWithNonescapingClosure(closure: () -> Void) {
            closure()
        }
        
//        class SomeClass {
//            var x = 10
//            func doSomething() {
//                someFunctionWithEscapingClosure { self.x = 100 }
//                someFunctionWithNonescapingClosure { x = 200 }
//            }
//        }
//
//        let instance = SomeClass()
//        instance.doSomething()
//        print(instance.x)
//        // 打印出 "200"
//
//        completionHandlers.first?()
//        print(instance.x)
        // 打印出 "100"
        
    }
    
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }

    func methodName(i:Int) -> Int {
        return i + 1;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

