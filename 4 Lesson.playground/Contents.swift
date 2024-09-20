import Cocoa

func separator (task: Int) {
    print("\n_________ დავალება #\(task)_________\n")
}

//1. შექმენით ფუნქცია სახელად `greet`, რომელიც იღებს String ტიპის პარამეტრს `name` და ბეჭდავს მისალმებას. მაგალითად, თუ გადავცემთ "გიორგი", უნდა დაიბეჭდოს "გამარჯობა, გიორგი!".
separator(task: 1)

func greet (name: String) {
    print("გამარჯობა, \(name)!")
}
greet(name: "ანა")

/*2. დაწერეთ ფუნქცია printMultiplicationTable, რომელიც იღებს ერთ Int ტიპის პარამეტრს number და ბეჭდავს ამ რიცხვის გამრავლების ტაბულას 1-დან 10-მდე. მაგალითად, თუ გადავცემთ 5-ს, ფუნქციამ უნდა დაბეჭდოს:
 
 
 
 5 x 1 = 5

 5 x 2 = 10

 5 x 3 = 15

 ...

 5 x 10 = 50



 გამოიძახეთ ეს ფუნქცია რამდენიმე სხვადასხვა რიცხვისთვის.*/
separator(task: 2)

func printMultiplicationTable(number: Int) {
    var sum = 0
    for i in 1...10 {
        sum = number * i
        print("\(number) * \(i) = \(sum)")
    }
}
printMultiplicationTable(number: 5)
printMultiplicationTable(number: 10)
printMultiplicationTable(number: -3)

//3. შექმენით ფუნქცია `isEven`, რომელიც იღებს Int ტიპის პარამეტრს და აბრუნებს Bool-ს - true თუ რიცხვი ლუწია, false თუ კენტი. გამოიყენეთ ეს ფუნქცია რამდენიმე რიცხვის შესამოწმებლად და დაბეჭდეთ შედეგები.
separator(task: 3)

func isEven (number: Int) -> Bool {
    let result = number % 2 == 0 ? true : false
    return result
}
print(isEven(number: 5))
print(isEven(number: 123))
print(isEven(number: 2))

//4. დაწერეთ ფუნქცია `repeatString`, რომელსაც აქვს ორი პარამეტრი: String ტიპის `text` და Int ტიპის `count`. ფუნქციამ უნდა დააბრუნოს ახალი სტრინგი, სადაც `text` გამეორებულია `count`-ჯერ. მაგალითად, `repeatString("ჰა", 3)` უნდა დააბრუნოს "ჰაჰაჰა".
separator(task: 4)

func repeatString(text: String, count: Int) -> String {
    var result = ""
    for i in 1...count {
        result = result + text
    }
    return result
}
print(repeatString(text: "an", count: 5))

//5. შექმენით ფუნქცია `calculateTax`, რომელსაც აქვს ორი პარამეტრი: Double ტიპის `price` და Double ტიპის `taxRate` (პროცენტებში). ფუნქციამ უნდა დააბრუნოს გადასახადის თანხა. გამოიძახეთ ეს ფუნქცია სხვადასხვა ფასისთვის და დაბეჭდეთ შედეგები.
separator(task: 5)

func calculateTax(price: Double, taxRate: Double) -> Double {
    var tax = price * taxRate / 100
    return tax
}
print(calculateTax(price: 12, taxRate: 10))

//6. დაწერეთ ფუნქცია `printNumbers`, რომელსაც აქვს ვარიადული Int ტიპის პარამეტრი `numbers`. ფუნქციამ უნდა დაბეჭდოს ყველა გადაცემული რიცხვი. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით.
separator(task: 6)

func printNumbers(numbers: Int...) {
    for number in numbers {
        print(number)
    }
}
printNumbers(numbers: 10, 200, 1234)

//7. ფუნქციის გარეთ შექმენით მუდმივა ‘pi’ და მიანიჭეთ შესაბამისი მნიშვნელობა. შექმენით ფუნქცია ‘calculateCircleArea’ რომელსაც აქვს Double ტიპის პარამეტრი `radius`. Pi-ს და radius-ის გამოყენებით დაბეჭდეთ წრის ფართობი.
separator(task: 7)

let Pi = 3.14

func calculateCircleArea(radius: Double) -> Double {
    let A = Pi * radius * radius
    return A
}
print(calculateCircleArea(radius: 20))

//8. შექმენით ფუნქცია printEvenNumbers, რომელიც იღებს ვარიადულ Int ტიპის პარამეტრს numbers. ფუნქციამ უნდა დაბეჭდოს მხოლოდ ლუწი რიცხვები გადმოცემული არგუმენტებიდან. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით და დაბეჭდეთ შედეგები.
separator(task: 8)

func printEvenNumbers(numbers: Int...) {
    for number in numbers {
        if number % 2 == 0{
            print(number)
        }
    }
}
printEvenNumbers(numbers: 1,2,3,4,5,6,7,8,99,9,2)


//9. დაწერეთ ფუნქცია `applyOperation`, რომელსაც აქვს სამი პარამეტრი: ორი Int ტიპის რიცხვი და ერთი closure, რომელიც იღებს ორ Int-ს და აბრუნებს Int-ს. ფუნქციამ უნდა გამოიყენოს ეს closure ორ რიცხვზე და დააბრუნოს შედეგი. გამოიძახეთ ეს ფუნქცია სხვადასხვა არითმეტიკული ოპერაციებისთვის (მიმატება, გამოკლება, გამრავლება) და დაბეჭდეთ შედეგები.
separator(task: 9)

func applyOperation(number1: Int, number2: Int, operaton: (Int, Int) -> Int) -> Int {
    return operaton(number1, number2)
}
let sum = applyOperation(number1: 10, number2: 12) { a, b in
    return a + b
}
print(sum)
let difference = applyOperation(number1: 30, number2: 12) { a, b in
    return a - b
}
print(difference)

//10. შექმენით ფუნქცია `repeatOperation`, რომელსაც აქვს ორი პარამეტრი: Int ტიპის `count` და @autoclosure ტიპის closure `operation`. ფუნქციამ უნდა გამოიძახოს ეს operation `count`-ჯერ. გამოიყენეთ ეს ფუნქცია, რომ დაბეჭდოთ "გამარჯობა" 5-ჯერ.
separator(task: 10)

func repeatOperation(count: Int, operation: @autoclosure () -> Void ) {
    for i in 1...count {
        operation()
    }
}
repeatOperation(count: 5, operation: print("გამარჯობა"))
