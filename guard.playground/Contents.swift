////import UIKit
////
////func singHappyBirthday()
////{
////    let isBirthdayToday = true
////    let invitedGuestList = [String]()
////    print(type(of: invitedGuestList))
////    let isCakeCandleLit = true
////    if isBirthdayToday
////    {
////        if !invitedGuestList.isEmpty
////        {
////            if isCakeCandleLit
////            {
////                print("Happy Birthday to you!!!")
////            }
////            else
////            {
////                print("The candkes are not lit yet.")
////            }
////        }
////        else
////        {
////            print("This is a family party.")
////        }
////    }
////    else
////    {
////        print("No one has birthday today.")
////    }
////}
//
//import UIKit
//
//func singHappyBirthday()
//{
//    let isBirthdayToday = true
//    let invitedGuestList = [String]()
//    let isCakeCandleLit = true
//    
//    if !isBirthdayToday
//    {
//        print("No one has birthday today, let's head to the hospital!!!!!!!")
//        return
//    }
//    if(invitedGuestList.isEmpty)
//    {
//        print("It is a family party")
//        return
//    }
//    if ( !isCakeCandleLit )
//    {
//        print("Cake candles are not lit yet.")
//        return
//    }
//    print("Happy birthday to you.")
//}


//MARK: guard condition else {//false condition}
// true condition
func singHappyBirthday()
{
    let isBirthdayToday = true
    let invitedGuestList = [String]()
    let isCakeCandleLit = true
    
    guard isBirthdayToday else
    {
        print("No one has birthday today, let's head to the hospital!!!!!!!")
        return
    }
    
    guard (!invitedGuestList.isEmpty) else
    {
        print("It is a family party")
        return
    }
    guard (isCakeCandleLit) else
    {
        print("Cake candles are not lit yet.")
        return
    }
    print("Happy birthday to you.")
}

struct Book
{
    let name : String?
    let publishedYear : Int?
}
let first = Book(name: "asdfghjkl", publishedYear: 1234567890)
let first2 = Book(name: "qwertyuiop", publishedYear: nil)
let books = [first, first2]

for book in books
{
    guard let possibleYear = book.publishedYear else {
//        break
        continue
    }
    
    print(possibleYear) // scope is within if let.
}
