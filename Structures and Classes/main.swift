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
