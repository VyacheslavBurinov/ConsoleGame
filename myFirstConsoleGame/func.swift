//
//  func.swift
//  myFirstConsoleGame
//
//  Created by Вячеслав Буринов on 04.04.2022.
//

import Foundation

func getArgument() -> Int {
    var stringFromConsole: String?
    var resultNumber: Int = 0
    
    for _ in 1... {
            print("Введите числовое количество аргументов")
        stringFromConsole = readLine()
        
        guard let string = stringFromConsole else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        guard let number = Int(string) else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        resultNumber = number
        break
    }
    return resultNumber
}

func getOperationCharacter() -> String {
    var stringFromConsole: String?
    let dict = ["*", "/", "+", "-", "^"]
    for _ in 1... {
        print("Введите арифметическое действие на операцию \(dict)")
        stringFromConsole = readLine()
        guard dict.contains(stringFromConsole ?? "") else {
            print("Вы ввели неверное значение. Повторим...")
            continue
        }
        break
    }
    return stringFromConsole!
}


func resultOperationFromArray(_ oper: String?, _ array: [Int]) -> Double {
    var result: Double = 0
    switch oper {
    case "+":
        for i in array{
            result += Double(i)
        }
    case "-":
        for i in array{
            result -= Double(i)
        }
    case "/":
//Выполняем проверку, не происходит ли деление на 0
        if array.index(after: 0) > 0{
            result = 1
            for i in array{
                result = Double(i) / result
            }
        }else {
            print("На 0 делить нельзя. Иди учи математику")
        }
    case "*":
        result = 1
        for i in array{
            result = result * Double(i)
        }
    case "^":
//Выполняем проверку на количество элементов в массиве
        if array.count <= 2 {
            result = pow(Double(array[0]),Double(array[1]))
        }else if array[1] == 0 {
            result = 1
        }else {
            print("В степень можно возвести только 2 аргумента")
        }
    default:
        break
    }
    return result
}
