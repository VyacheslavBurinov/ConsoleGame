//
//  main.swift
//  myFirstConsoleGame
//
//  Created by Вячеслав Буринов on 04.04.2022.
//

import Foundation

var num1 = getArgument()

var numArray: [Int] = []

for _ in 0..<num1 {
    var numDown: String?
    repeat{
        print("Введите числовое значение аргумента")
        numDown = readLine()
        numArray.append(Int(numDown!)!)
        print(numArray)
    }while Int(numDown!) == nil
    
}

var argumentOperation = getOperationCharacter()
var result = resultOperationFromArray(argumentOperation, numArray)
print("Результат \(result)")
