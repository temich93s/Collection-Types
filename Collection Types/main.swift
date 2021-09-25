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


//MARK: Итерация по множеству
print("\n//Итерация по множеству")

for i in someSet1 {
    print("i = \(i)")
}
print()

for i in someSet1.sorted() {
    print("i = \(i)")
}
print()

var someSet5: Set = ["a", "b", "c", "d", "e"]

for i in someSet5 {
    print("i = \(i)")
}
print()

for i in someSet5.sorted() {
    print("i = \(i)")
}


//MARK: Базовые операции множеств
print("\n//Базовые операции множеств")

var someSet6: Set = [1, 2, 3, 4]
var someSet7: Set = [3, 4, 5, 6]

print(someSet6.union(someSet7))
print(someSet6.intersection(someSet7))
print(someSet6.subtracting(someSet7))
print(someSet6.symmetricDifference(someSet7))


//MARK: Взаимосвязь и равенство множеств
print("\n//Взаимосвязь и равенство множеств")

var someSet8: Set = [5, 6]
var someSet9: Set = [5, 6]

//оператор равенства (==) определяет все ли значения двух множеств одинаковы
print(someSet8 == someSet9) //true

//метод isSubset(of:) определенияет все ли значения множества содержатся в указанном множестве
print(someSet8.isSubset(of: someSet6)) //false
print(someSet8.isSubset(of: someSet7)) //true

//метод isSuperset(of:) определяет содержит ли множество все значения указанного множества.
print(someSet6.isSuperset(of: someSet8)) //false
print(someSet7.isSuperset(of: someSet8)) //true

//метод isStrictSubset(of:) определяет является ли множество подмножеством, но не равным указанному сету.
print(someSet8.isStrictSubset(of: someSet6)) //false
print(someSet8.isStrictSubset(of: someSet7)) //true

//метод isStrictSuperset(of:) определяет является ли множество надмножеством, но не равным указанному сету.
print(someSet6.isStrictSuperset(of: someSet8)) //false
print(someSet7.isStrictSuperset(of: someSet8)) //true

//метод isDisjoint(with:) определяет, отсутствуют ли общие значения в двух множествах или нет.
print(someSet6.isDisjoint(with: someSet8)) //true
print(someSet7.isDisjoint(with: someSet8)) //false

