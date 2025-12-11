import SwiftUI
struct Book
{
    var name : String
    var publicationYear : Int?
}

let firstBook = Book(name: "inferno", publicationYear: 2014)
let secondBook = Book(name: "A tale of Two Cities", publicationYear: 1859)
let unamedBook = Book(name: "Rabel and Lion", publicationYear: nil)

if firstBook.publicationYear != nil
{
    let actualYear = firstBook.publicationYear!
    print(actualYear)
}
else
{
    print("Not yet published")
}
//let actualType = unamedBook.publicationYear!
//print(actualType)// will throw error coz nil

// MARK: it is called optional binary.
if let actualYear = unamedBook.publicationYear{
    print(actualYear)
}

let string = "123"
let possibleNumber = Int(string)
print(possibleNumber!)
// but if it was non numberic string it would be returning nil.

func printFullName(firstName : String, middleName : String? = nil, lastName : String)
{
    print("Full Name is \(firstName) \(middleName ?? "") \(lastName)")
}
//printFullName(firstName: "Kartik", middleName: nil, lastName: "Kaushik")
printFullName(firstName: "Kartik", lastName: "Kaushik")


struct Toddler
{
    var name : String
    var monthsOld : Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36
        {
            return nil
        }
        else
        {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}
let toddler = Toddler(name: "divi",monthsOld: 37)
if let myToddler = toddler{
    print("The toddler \(myToddler.name) is \(myToddler.monthsOld) months  old")
}
else
{
    print("Not a Toddler")
}



struct Person
{
    var age : Int
    var residence : Residence?
}
struct Residence
{
    var address : Address?
}
struct Address
{
    var buildingNumber : String
    var streetNumber : String
    var apartmentNumber : String?
}
let address = Address(buildingNumber: "R", streetNumber: "16", apartmentNumber: "1146")
let residence = Residence(address: address)
let person = Person(age: 21, residence: residence)
if let theResidence = person.residence
{
    if let theAddress  = theResidence.address
    {
        if let theApartmentNumber = theAddress.apartmentNumber{
            print("the person has apartment number \(theApartmentNumber)")
        }
    }
}

if let theApartmentNumber = person.residence?.address?.apartmentNumber{
    print("the person has apartment number \(theApartmentNumber)")
}


//@IBOutlet var nameLabel : UILabel!
//
