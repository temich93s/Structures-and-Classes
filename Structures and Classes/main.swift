//
//  main.swift
//  Structures and Classes
//
//  Created by 2lup on 02.10.2021.
//

import Foundation

print("Hello, World!")


//MARK: Синтаксис объявления
print("\n//Синтаксис объявления")

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


//MARK: Экземпляры класса и структуры
print("\n//Экземпляры класса и структуры")

let someResolution = Resolution()
let someVideoMode = VideoMode()


//MARK: Доступ к свойствам
print("\n//Доступ к свойствам")

print(someResolution.width)
print(someVideoMode.resolution.width)

someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)


//MARK: Поэлементные инициализаторы структурных типов
print("\n//Поэлементные инициализаторы структурных типов")

let vga = Resolution(width: 640, height: 480)
print(vga.width, vga.height)


//MARK: Структуры и перечисления - типы значения
print("\n//Структуры и перечисления - типы значения")

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print(hd.width, hd.height)
print(cinema.width, cinema.height)


//MARK: Классы - ссылочный тип
print("\n//Классы - ссылочный тип")

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print(alsoTenEighty.frameRate)
print(tenEighty.frameRate)


//MARK: Операторы тождественности
print("\n//Операторы тождественности")

print(alsoTenEighty === tenEighty)
print(alsoTenEighty !== tenEighty)
