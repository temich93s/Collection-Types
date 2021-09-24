//
//  main.swift
//  Collection Types
//
//  Created by 2lup on 25.09.2021.
//

import Foundation

print("Hello, World!")

//MARK: Синтаксис массивов
print("\n//Синтаксис массивов")

var someInt1 = [1, 2, 3, 4, 5]
let someInt2 = [1, 2, 3, 4, 5]
var someInt3: Array<Int> = [1, 2, 3, 4, 5]
print(someInt1, someInt2, someInt3)


//MARK: Создание пустого массива
print("\n//Создание пустого массива")

var someInt4 = [Int]()
print(someInt4)
someInt4.append(3)
print(someInt4)
someInt4 = []
print(someInt4)


//MARK: Создание массива с дефолтным значением
print("\n//Создание массива с дефолтным значением")

var someInt5 = Array(repeating: 4, count: 5)
var someInt6 = Array(repeating: "Hi", count: 3)
print(someInt5, someInt6)


//MARK: Создание массива, путем объединения двух массивов
print("\n//Создание массива, путем объединения двух массивов")

var someInt7 = someInt1 + someInt2
print(someInt7)

