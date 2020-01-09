//
//  ViewController.swift
//  TestLS5
//
//  Created by Alexandr Ryabchun on 26.12.2019.
//  Copyright © 2019 Alexandr Ryabchun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        printHello()
        
        printDayName(day: Int.random(in: 0...10))
        
        addition(a: Int.random(in: 0...100), b: Int.random(in: 0...100))
        
        let numberForTask4 = Int.random(in: 0...100)
        print("Task 4 result for number \(numberForTask4) is \(task4(number: numberForTask4))")
        
        printHelloSeveralTimes(count: Int.random(in: 1...5))
        
        print(fib(num: 7))
        
        print(task7(n: 4))
        
        task7New(n: 4)
    }
    
    //1. Записать метод которий виведет в консоль сообщение С приветсвием “Привет”
    // (без аргументов) - 5мин -макс
    func printHello() {
        print("Hello")
    }
    
    //2. Записать метод которий будет выводить в консоль сообщение какой день недели относительно числа которое попадает в метод как аргумент
    // (1 аргумент) 10 мин -макс
    func printDayName(day: Int) {
        let dayName: String
        switch day {
        case 1:
            dayName = "Monday"
        case 2:
            dayName = "Thusday"
        case 3:
            dayName = "Wensday"
        case 4:
            dayName = "Thursday"
        case 5:
            dayName = "Friday"
        case 6:
            dayName = "Saturday"
        case 7:
            dayName = "Sunday"
        default:
            dayName = "\(day) is wrong argument for defining dayName"
        }
        print(dayName)
    }
    
    //3. Записать метод которий выводит в консоль суму двух чисел
    //(2 аргумента) 10 мин -макс
    func addition(a: Int, b: Int) {
        print("\(a) + \(b) = \(a +  b)")
    }
    
    //4. Записать метод которий будет умножать задание число на 30 прибавлять 5 и возвращать результат вичислений, єтот результат нужно использовать в методе viewDidLoad для вивода в консоль
    // (1 аргумент + return) 15мин -макс
    func task4(number: Int) -> Int {
        return number * 30 + 5
    }
    
    //5. Записать метод которий виведет в консоль сообщение С приветсвием “Привет” заданное количество раз
    // (1 аргумент) - 5мин -макс
    func printHelloSeveralTimes(count: Int) {
        for _ in 0..<count {
            printHello()
        }
    }
    
    //6. Написать метод который будет показывать число Фибоначчи например fib(num:6) должно вернуть число 8
    //(1 аргумент + return)
    func fib(num: Int) -> Int {
        var fib1 = 1
        var fib2 = 1
        var fibSum: Int
        
        var i = 0
        while i < num - 2 {
            fibSum = fib1 + fib2
            fib1 = fib2
            fib2 = fibSum
            i = i + 1
        }
             
        return fib2
    }
    
    //7. Написать метод который принимает число N и показывает сумму первых N нечетных чисел, например oddSum(n:4) = (1 + 3 + 5 + 7) должно вернуть число 16
     //(1 аргумент + return)
    func task7(n: Int) -> Int{
        var result = 0
        var i = 0
        var next = 1
        
        while i < n {
            if next % 2 != 0 {
                result += next
                i += 1
            }
            next += 1
        }
        
        return result
    }
    
    func task7New(n: Int) {
        var collection = 0...(n * 2)
        print( collection.filter{$0 % 2 != 0}.reduce(0, +))
    }
}

