struct SmallRectangle
{
    private var height : Int = 0
    private var width : Int = 0
//    init(height: Int, width: Int)
//    {
//        self.height = min(height, 12)
//        self.width = min(width, 12)
//    }
    var _height : Int
    {
        get
        {
            height
        }
        set
        {
            height = min(newValue, 12)
        }
    }
    var _width : Int
        {
            get
            {
                width
            }
            set
            {
                width = min(newValue, 12)
            }
        }
}
var smol = SmallRectangle()
//let realSmol = SmallRectangle
print(smol._height)
smol._height = 48
print(smol._height)
//print(realSmol)


struct Temperature
{
    var celsius : Double
    var fahrenheit : Double
    {
        get
        {
            return celsius * 1.8 + 32
        }
        set
        {
            print("new value: \(newValue)")
            celsius = (newValue-32)/1.8
        }
    }
}
var currentTemp = Temperature(celsius: 0.0)
print(currentTemp.fahrenheit)
currentTemp.fahrenheit = 32.0
print(currentTemp.fahrenheit)
print(currentTemp.celsius)

