//struct SmallRectangle
//{
//    private var height : Int = 0
//    private var width : Int = 0
////    init(height: Int, width: Int)
////    {
////        self.height = min(height, 12)
////        self.width = min(width, 12)
////    }
//    var _height : Int
//    {
//        get
//        {
//            height
//        }
//        set
//        {
//            height = min(newValue, 12)
//        }
//    }
//    var _width : Int
//        {
//            get
//            {
//                width
//            }
//            set
//            {
//                width = min(newValue, 12)
//            }
//        }
//}
//var smol = SmallRectangle()
////let realSmol = SmallRectangle
//print(smol._height)
//smol._height = 48
//print(smol._height)
////print(realSmol)
//
//
//struct Temperature
//{
//    var celsius : Double
//    var fahrenheit : Double
//    {
//        get
//        {
//            return celsius * 1.8 + 32
//        }
//        set
//        {
//            print("new value: \(newValue)")
//            celsius = (newValue-32)/1.8
//        }
//    }
//}
//var currentTemp = Temperature(celsius: 0.0)
//print(currentTemp.fahrenheit)
//currentTemp.fahrenheit = 32.0
//print(currentTemp.fahrenheit)
//print(currentTemp.celsius)
//import UIKit
@propertyWrapper
struct PreTeen {
//    var wrappedValue: 0
    private var number : Int
    private var maximum : Int
        
    var wrappedValue : Int {
        get{
            return number
        }
        set{
            number = min(newValue, maximum)
        }
        
    }
    init()
    {
        number = 0
        maximum = 12
    }
    init(wrappedValue : Int)
    {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int)
    {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
        
    }
}

struct smallRectangle
{
    @PreTeen var height : Int = 9
    
    /*
     // dekho cl kya raha h na ki height ek instance bna raha h preteen ka like:
     
        private _hieght = PreTeen()
        get
        {
            _hieght.wrappedValue
        }
         set
         {
            _height.wrappedValue = newValue
         }
     
     */
    @PreTeen var width : Int = 99
}

var smoll = smallRectangle()
print(smoll.height)
print(smoll.width)


struct NarrowRectangle
{
    @PreTeen(wrappedValue: 2, maximum: 5) var height : Int
    @PreTeen(wrappedValue: 3, maximum: 4) var width : Int
}

var narrow = NarrowRectangle()
print(narrow.height, narrow.width)

narrow.height = 7890
narrow.width = 234567890
print(narrow.height, narrow.width)



struct MixedRectangle
{
    @PreTeen var height : Int = 1
    @PreTeen(wrappedValue: 17) var width : Int
}

var mixedRectangle = MixedRectangle()
print(mixedRectangle.height, mixedRectangle.width)

