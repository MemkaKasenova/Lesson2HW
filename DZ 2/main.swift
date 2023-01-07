////
////  main.swift
////  DZ 2
////
////  Created by merim kasenova on 31/12/22.
////
//
//import Foundation
//
//print("Hello, World!")
////Домашнее задание №2
//
////Задание №1
//// №1. Используя функции, условные операторы составить следующую программу прогноза погоды:
//
////При вводе одного из городов в readLine (Бишкек, Чолпон-Ата, Талас, Ош, Джалал-Абад, Нарын, Баткен) выводить в итоге данные о погоде на ближайшие 3 дня в указанном городе
//
let city = readLine()! // Вывод строки на консоль Бишкек
                                                //Погода в Бишкеке на 3 дня: 21,22,23
func weather(city:String) {
    if city == "Бишкек"{
        print("Погода в Бишкеке на 3 дня: 21,22,23")
    }else if city == "Чолпон-Ата"{
        print("Погода в Чолпон-Ате на 3 дня: 18,19,20")
    }else if city == "Талас"{
        print("Погода в Таласе на 3 дня: 17,18,23")
    }else if city == "Ош"{
        print("Погода в Оше на 3 дня: 28,29,30")
    }else if city == "Джалал-Абад"{
        print("Погода в Джалал-Абаде на 3 дня: 31,32,33")
    }else if city == "Нарын"{
        print("Погода в  Нарын на 3 дня: 14,15,16")
    }else if city == "Баткен"{
        print("Погода в Баткен на 3 дня: 30,32,30")
    }
}
weather(city: city) //вывод функции

// Задание №2
// №2. Используя условные операторы и функции создать программу, которая после ввода 5 наименований продуктов через readLine будет считать итоговую стоимость покупок (со скидкой в 5%). Учесть что товары могут повторяться

//В итоге должно быть так: (например)
//Ваши товары:
//Кола - 50с
//Кефир - 65с
//Молоко - 40с
//Хлеб - 20с
//Салат - 100с
//
//275с + скидка 13,75c
//Итого: 261,25с

// Решение:

func priceTovar(tovar: String)->Int{
    switch tovar{
    case "Cola":
        print("Пробить - 50c")
        return 50
    case "Kefir":
        print("Пробить - 65c")
        return 65
    case "Milk":
        print("Пробить - 40c")
        return 40
    case "Bread":
        print("Пробить - 20c")
        return 20
    case "Salad":
        print("Пробить - 100c")
        return 100
    default:
        print("Нет товара!")
        return 0
    }
}
var Cola = readLine()! // Выводить на консоль название товара
var Kefir = readLine()!
var Milk = readLine()!
var Bread = readLine()!
var Salad = readLine()!
//// пример как выглядит чек с набором товаров
////Cola
////Fanta
////Bread
////
////Нет товара!
////Нет товара!
////Нет товара!
////Пробить - 20c
////Нет товара!
////Total (withoutsale): 20 сом
////Всего:20сом
////Число 1:
//
var ColaPrice = priceTovar(tovar: Cola)
var KefirPrice = priceTovar(tovar: Kefir)
var MilkPrice = priceTovar(tovar: Milk)
var BreadPrice = priceTovar(tovar: Bread)
var SaladPrice = priceTovar(tovar: Salad)

var totalPrice = ColaPrice + KefirPrice + MilkPrice + BreadPrice + SaladPrice

print("Total (withoutsale): \(totalPrice) сом")
var sale = totalPrice/100 * 5 // расчет скидки
var final = totalPrice - sale // условие для скидки

print("Всего:\(final)сом")

//Доп задание

func calc(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
func calc2(num1: Int, num2: Int) -> Int {
    return num1 - num2
}
func calc3(num1:Int, num2: Int) -> Int {
    return num1 * num2
}
func calc4(num1: Int, num2: Int) -> Int {
    return num1 / num2
}
print("Число 1:")
let firstNumber = Int(readLine()!)!
print("Условие:(+,-,*,/):")
let condition = readLine()!
print("Число 2:")
let secondNumber = Int(readLine()!)!

if condition == "+"{
    print(calc(num1:firstNumber,num2:secondNumber))
}else if condition == "-"{
    print(calc2(num1: firstNumber, num2: secondNumber))
}else if condition == "*"{
    print(calc3(num1: firstNumber, num2: secondNumber))
}else if condition == "/"{
    print(calc4(num1: firstNumber, num2: secondNumber))
}
//Число 1:
//2
//Условие:(+,-,*,/):
//-
//Число 2:
//3
//-1
