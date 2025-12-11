import UIKit

let greeting = "sup \r\t//\"kaushik\"\\\\"
var name = "Kartik"

let random = """
    Is it truly random?
    naaaah
    """
print(random)
print(greeting)



var randomString = ""
print(randomString.isEmpty)
let a = "a" // it's a string
let b: Character = "b"
var concate = greeting + random
print(concate)

let age = 21
print("\(name): \(age)")
let x = 5
let y = 10
print("\(x)+\(y)=\(x+y)")


let month = "January"
let otherMonth = "January"
let lowercaseMonth = "january"

if month == otherMonth
{
    print("they are the same")
}
if month != lowercaseMonth
{
    print("they are not the same")
}

if month.lowercased() == lowercaseMonth
{
    print("now they are same.")
}

if month.uppercased() == lowercaseMonth.uppercased()
{
    print("now they are same.(uppercased)")
}

print(month.hasPrefix("January"))
print(month.hasSuffix("January"))

if greeting.contains("sup")
{
    print("Making an Introduction")
}
let count = name.count
print(count)

let input = "e"
let vowel = "aeiou"

if vowel.lowercased().contains(input.lowercased())
{
    print("vowel")
}
else
{
    print("not a vowel")
}

// or


switch input.lowercased()
{
case "a","e","i","o","u":
    print("\(input) is a vowel")
default:
    print("\(input) is not a vowel")
}

print("✈︎")
