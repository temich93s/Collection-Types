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


//MARK: Создание массива через литералы массива
print("\n//Создание массива через литералы массива")

var someArray1: [String] = ["Hi", "World"]
var someArray2 = ["Hello", "Universe"]
print(someArray1, someArray2)


//MARK: Доступ и изменение массива
print("\n//Доступ и изменение массива")

print(someArray1.count)

print(someArray1.isEmpty)
someArray1 = []
print(someArray1.isEmpty)

someArray1.append("Welcome")
print(someArray1)

someArray1 += someArray2
print(someArray1)

print(someArray1[1])

someArray1[1] = "Friend"
print(someArray1)

someArray1[1...2] = ["One", "Two"]
print(someArray1)

someArray1.insert("House", at: 1)
print(someArray1)

print(someArray1.remove(at: 0))
print(someArray1)

print(someArray1.removeLast())
print(someArray1)


//MARK: Итерация по массиву
print("\n//Итерация по массиву")

for i in someArray1 {
    print(i, terminator: "! ")
}
print()

for (index, value) in someArray1.enumerated() {
    print("index: \(index), value: \(value)")
}


//MARK: Создание и инициализация пустого множества
print("\n//Создание и инициализация пустого множества")

var someSet1: Set<Int> = [1,2,3,4,5]
print(someSet1)
print(someSet1)

var someSet2 = Set<String>()
print(someSet2)

someSet2.insert("a")
someSet2 = []
print(someSet2)


//MARK: Создание множества при помощи литерала массива
print("\n//Создание множества при помощи литерала массива")

var someSet3: Set<String> = ["one", "two", "three"]
print(someSet3)

var someSet4: Set = ["one", "two", "three"]
print(someSet4)


//MARK: Доступ и изменение множества
print("\n//Доступ и изменение множества")

print(someSet4.count)

print(someSet2.isEmpty)
print(someSet4.isEmpty)

someSet4.insert("Four")
print(someSet4)

someSet4.remove("Four")
print(someSet4)

someSet4.removeAll()
print(someSet4)

someSet4 = ["one", "two", "three"]
print(someSet4.contains("two"))
