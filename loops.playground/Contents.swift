var count : Int = 0;
for num in 1..<5
{
    print(num)
}
let names = ["a", "b", "c"]
for name in names
{
    print(name)
}
// enumerated

for (index, letter) in "asdfghjkl".enumerated()
{
    print("At index \(index) the letter is \(letter)")
}
for (index, letter) in (1...5).enumerated()
{
    print("At index \(index) the letter is \(letter)")
}
let nameAndAge = ["a": 25,
                  "b": 21,
                  "c": 20]

for tuple in nameAndAge
{
    print(tuple)
}
for(_, age) in nameAndAge
{
    print(age)
}
//while true
//{
//    print(0)
//}
var t = 10
while (t > 0)
{
    print(0);
    t-=1;
}
