
// MARK: CLOSURES

// see like this is a normal function
func display()
{
    print("This is a function.");
}
display();


// now for closure...
//do ( we can use do but it's not a closure)

// we gotta use a variable to store a closure
let sayMyName = {
    print("This is a closure.");
}

sayMyName();

func add(a : Int, b : Int) -> Int
{
    a+b;
}
print(add(a: 20, b: 30))

let printClouser = { () -> Void in
    print("This is a closure");
}


let printClouser2 = { (String) -> Void in
    print(String)
}
let printClouserInt = { (Int) -> Void in
    print(Int)
}

printClouser2("This is a second")
printClouser2("why it is not downcasted?")


let printClouserReturn = { () -> Int in
    1
}
print(printClouserReturn)


let giveRandomInteger = {(min: Int, max: Int) -> Int in
    return Int.random(in: min...max)
}

print(giveRandomInteger(1, 1000000000000000000))

func getClousre(aClousre: () -> Void)
{
    aClousre()
}

print(getClousre(aClousre: sayMyName))


func getClousreAdd(aClousre: (Int,Int) -> Int)
{
    aClousre(5, 6)
}


//mathop 3 para, int, 3rd is closure and apply add to on those 2 int.

//let addClosure = {
//    (x: Int, y: Int) -> Int in
//    x + y
//}

let addClosure : (Int, Int) -> Int  = { $0 + $1 + $1}
print(addClosure(30, 2020))

let subClosure = {
    (x: Int, y: Int) -> Int in
    return x-y
}
print(subClosure(30, 2020))

let mulClosure = {
    (x: Int, y: Int) -> Int in
    return x*y
}
print(mulClosure(30, 2020))

func mathOps(_ x: Int,_ y: Int,aClosure: (Int,Int) -> Int) -> Int
{
//    aclousre(5,6,addClosure)
    aClosure(x, y)
    
}
print(mathOps(30, 40, aClosure: addClosure))
print(mathOps(30, 40, aClosure: subClosure))
print(mathOps(30, 40, aClosure: mulClosure))

var numbers = [1,2,3]

let add = { (arr:[Int]) -> Int in
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    return sum
}

let prod = { (arr:[Int]) -> Int in
    var product = 0;
    for number in numbers
    {
        product *= number;
    }
    return product;
}

//var sub : (Int, Int) -> Int {$0 for $1 in numbers $1 + $0}
// but it is not a closure but  function so.....
//let sum = numbers.reduce(0, +)
//print(sum)

func performFunction(on numbers: [Int], using operation: ([Int]) -> Int) ->Int
{
    return operation(numbers)
}
print(performFunction(on: numbers, using: add))
print(performFunction(on: numbers, using: prod))

let result1 = performFunction(on: numbers){ _ in
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    return sum
}
print(result1)


// MARK: sort

struct Track
{
    var trackingNumber: Int
    var starRating: Int
}

let tracks = [Track(trackingNumber: 101, starRating: 5),
              Track(trackingNumber: 100, starRating: 0),
              Track(trackingNumber: 100, starRating: 5),
              Track(trackingNumber: 104, starRating: 1)]

let sortedTracks = tracks.sorted() { (firstTrack : Track, secondTrack : Track) -> Bool  in
    firstTrack.trackingNumber - secondTrack.trackingNumber < 0
}

let sortedTracksShortHand = tracks.sorted() { $0.trackingNumber < $1.trackingNumber}

print(sortedTracks)


var emailAddresses = ["Kartik14704@gmail.com", "deVANSH@12p498eyiuhdsjkcnm"]


var sorted = [String]()
for mail in emailAddresses
{
    sorted.append(mail.lowercased())
}
print(emailAddresses)
print(sorted)

var correctedEmail = emailAddresses.map { $0.lowercased() }

print(correctedEmail)
 

var marks = [1,2,3,100]

var sortedMarkes = marks.filter{ $0 > 90 }
print(sortedMarkes)


let summ = marks.reduce(0){$0 > $1 ? $0 : $1}
print(summ)

// MARK: DIFFERENCE

func incrementer()
{
    var count = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0
    let incrementByOne = { count /= 5 }
    
    incrementByOne()
    incrementByOne()
    
    print(count)
    
    count = 66
    incrementByOne()
    print(count)
}
incrementer()

//func makeinc para amount(int) return a closure.
func makeIncrementer( amount: Int ) -> () -> Int
{
    var count = 10;
//    let incrementer = {
//        count += amount
//        return count
//    }
    func incrementer() -> Int
    {
        count += amount
        return count
    }
    return incrementer
    
}

let incrementByTen = makeIncrementer(amount: 10)
let incrementByfive = makeIncrementer(amount: 5)

print(incrementByTen())
print(incrementByTen())
print(incrementByfive())
print(incrementByfive())

// so closure is to the function as classes to the struct.

// define a varibale and assign a varibale to closure and simply print that string

//let response = { response in
//    print(response)
//}
//response(str)

func confirmOrder(itemName: String, serverCallback: (String) -> ())
{
    print("SERVER: item is processing")
    let response = "Your order is placed successfully"
    serverCallback(response)
}


func placeOrder(item: String, completion: (String) -> ()) -> ()
{
    print("CLIENT: Placing order for \(item)")
    
    confirmOrder(itemName: item){ order in
        print(order)
    }
}

placeOrder(item: "banananananaananaaa") { response in
    print(response)
}
struct Person
{
    var name : String
    var age : Int
//    init(name: String, age: Int)
//    {
//        self.name = name
//        self.age = age
//    }
    init(closure: () -> (String, Int))
    {
        (name,age) = closure()
    }
//    init(closure: () -> (String)) {
//        (name) = closure()
//    }
}
let aPerson = Person {
    ("Kartik",21)
}
print(aPerson)

@resultBuilder
struct simpleStringBuilder
{
    static func buildBlock(_ components: String...) -> String
    {
        components.joined(separator: " ")
    }
    
    @simpleStringBuilder func combine() -> String
    {
        "hi"
        "qwertyuiop"
        "I am"
        "asdfghjkl"
        "sup?"
        "zxcvbnm"
    }
    //print(combine())
}
struct Person2
{
    var name : String
    
    init(@simpleStringBuilder closure: () -> (String))
    {
        name = closure()
    }
}

let bPerson = Person2{
    "Kartik"
    "Kaushik"
}
print(bPerson)
    
//
//@resultBuilder
//struct NameStringBuilder
//{
//    static func buildBlock(_ components: String...) -> String
//    {
//        components.joined(separator: " ")
//    }
//}
//@NameStringBuilder
//func buildName(firstName: String, lastName: String) -> String
//{
//        firstName
//        lastName
//}

//print(buildName(firstName: "Kartik", lastName: "Kaushik"))



protocol Displayable
{
    func display()
}

struct Minor: Displayable
{
    let name: String
    var age: Int
    
    func display()
    {
            print("This person is Minor,(\(name),\(age))")
    }
}

struct Adult: Displayable
{
    let name: String
    var age: Int
    let voterID: String
    
    func display() {
        print("This person is adult, (\(name),\(age),\(voterID))")
    }
}

struct People: Displayable
{
    let people : [Displayable]
    
    init(@PeopleBuilder aClosure: () -> [Displayable]) {
//        self.people = people
        people = aClosure()
    }
    
    func display()
    {
//        print("")
        for person in people
        {
            person.display()
        }
    }
}

let people = People{
    Adult(name: "Kartik", age: 21,voterID: "qwertyuioplkjhgfdsazxcvbnm")
    Minor(name: "asdsadsffasdjkcndcns wdsjbhdioscbhjdscjbhewdsdcbdwjsjkadsc", age: 11)
    
}

@resultBuilder
struct PeopleBuilder{
    static func buildBlock(_ components: [Displayable]...) -> [Displayable] {
        components.flatMap{$0}
    }
    static func buildExpression(_ expression: Displayable) -> [Displayable] {
        [expression]
    }
}

people.display()
 
