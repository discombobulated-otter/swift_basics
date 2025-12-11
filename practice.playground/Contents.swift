struct Array<T>
{
    var ints : [T];
}
struct Dictionary<Key, Value> where Key : Hashable
{
    
}
func increment(value :inout Int)
{
//    var temp = value+1;
//    return temp;
    value+=1;
//    return value;
}
var temp = 5;
print(increment(value: &temp))
print(temp);

func swapTwoInput<T>(_ a:inout T, _ b:inout T)
{
    let tempA = a
    a = b
    b = tempA
}
var a = 0.8
var b = 9.2
swapTwoInput(&a,&b)
print(a)
print(b)
func max<T>(_ x: T, _ y: T) where T : Comparable
{
    
}

struct Stack<T>
{
    var items : [T] = []
    mutating func push(_ item : T)
    {
        items.append(item);
    }
    mutating func pop()
    {
        items.remove(at: items.count-1);
    }
    func display()
    {
        print(items);
    }
}

//var input = readLine();
var stack = Stack<Int>();
//var userInput = Int(input!);
stack.push(5);

stack.display()

extension Stack
{
    // like if we have to implement top or isEmpty...
    var top : T?
    {
        return items.isEmpty ? nil : items[items.count-1];
    }
}

print(stack.top!)

// MARK:

func findIndex<T:Equatable>(ofString valueToFind : T, in array:[T]) -> Int?
{
    for (index,value) in array.enumerated()
    {
        if (value == valueToFind)
        {
            return index;
        }
    }
    return nil;
}
let strings = ["KYS"]
if let index = findIndex(ofString: "KYS", in: strings)
{
    print(index);
}


var intVal:Int
if let i = readLine(strippingNewline: true){
intVal = Int(i)!
}

//MARK: PROTOCOL

protocol TestData
{
    associatedtype item;
    func sum(a : item, b: item) -> item
}

struct data: TestData
{
    typealias item = Int
    func sum(a: Int, b: Int) -> Int
    {
        return a+b;
    }
}

let obj1 = data();
let result1 = obj1.sum(a: 40, b: 30)
print(result1)

protocol Shape
{
    associatedtype T
    func draw() -> T
}
struct Circle : Shape
{
    typealias T = Int
    func draw() -> Int
    {
        return 1;
    }
}

func getShapeType() -> some Shape
{
    let shape = Circle();
    return shape;
}

func getAnotherShapeType() -> some Shape
{
    let shape = Circle();
    return shape;
}
