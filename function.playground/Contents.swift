func sayHello()
{
    print("Hello")
}
sayHello()
func sayHello(personName: String)
{
    print("hello,\(personName)")
}
sayHello(personName: "Kartik")

func verifyName(personName: String) -> String
{
    let nameOnRecords = "Kartik"
    if personName == nameOnRecords
    {
        return "Name verified"
    }
    else
    {
        return "Name not verified"
    }
}
let aPerson = verifyName(personName: "Kaushik")
print(aPerson)

//func addStudent(studentName: String, schoolName: String, rollNumber: Int)
//{
//    print("Student with name \(studentName), school \(schoolName) and roll number = \(rollNumber) added to records")
//}
//addStudent(studentName: "Kartik", schoolName: "iOSDC", rollNumber: 22)
//addStudent(schoolName: "idc", studentName: "kartik", rollNumber: 21)


func add(_ firstNumber: Int,to secondNumber:Int) -> Int
{
    firstNumber + secondNumber
}
//print(add(firstNumber: 1, secondNumber: 2))
let sum = add(10, to:20)

func greetings(to person:String, and anotherPerson: String)
{
    print("Hello, \(person) and \(anotherPerson)")
}

greetings(to: "kartik", and: "...... .....")

func addStudent( studentName: String,_ schoolName: String,_ rollNumber: Int)
{
    print("Student with name \(studentName), school \(schoolName) and roll number \(rollNumber) added to records")
}
//addStudent("kartik", "SCSE", 803)
addStudent(studentName: "Kartik" , "SCSE", 068)



func calculateSaving(priceOfCar:Int, oldRateGST:Int, newRateGST:Int) -> (oldCostOfCar:Int, newCostOfCar:Int, savingOnCar:Int)
{
    let oldCostOfCar = priceOfCar + priceOfCar * oldRateGST / 100
    let newCostOfCar = priceOfCar + priceOfCar * newRateGST / 100
    let savingOnCar = oldCostOfCar - newCostOfCar
    return (oldCostOfCar, newCostOfCar, savingOnCar)
}


//let value = calculateSaving(priceOfCar: 500000, oldRateGST: 28, newRateGST: 18)
//print("""
//    \(value.0)
//    \(value.1)
//    \(value.2)
//    """)

let (oldCostOfCar, newCostOfCar, savingOnCar) = calculateSaving(priceOfCar: 500000, oldRateGST: 28, newRateGST: 18)
print("""
    \(oldCostOfCar)
    \(newCostOfCar)
    \(savingOnCar)
    """)


let value = calculateSaving(priceOfCar: 500000, oldRateGST: 28, newRateGST: 18)
print("""
    \(value.oldCostOfCar)
    \(value.newCostOfCar)
    \(value.savingOnCar)
    """)
