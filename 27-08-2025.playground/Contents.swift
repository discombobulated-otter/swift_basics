import UIKit
//
//let temperature = 30
////if temperature >= 30
////{
////    print(true)
////}
////else
////{
////    print(false)
////}
////print(temperature>=30)
//
//
//if temperature >= 65 && temperature<=80
//{
//    print("mast")
//}
//else if temperature < 65
//{
//    print("naaah")
//}
//else
//{
//    print("now that's hot")
//}
//
let numberOfWheels = 70

switch numberOfWheels
{
case 65..<80 :
    print("mast")
//    fallthrough
case Int.min..<65:
    print("unicycle")
//    fallthrough
//case:
//    print("BIcycle")
//    fallthrough
//case 80...Int.max:
//    print("hot")
default:
    print("hot")
}
