// Playground - noun: a place where people can play

var animals = ["cat", "dog", "horse", "rat", "elephant"]

var num: [Int] = [0, 1 ,2 ,3 ,4 ,5 ,6 ,7]

animals[2] = "cow"

for animal in animals {
    println(animal)
}

//length of an array
println(num.count)

println(animals[0...3])

var ingredients:[String] = []

if ingredients.isEmpty {
    println("The Array is Empty")
}else {
    println("The Array is not empty")
}

num.append(8)

num += [10, 11, 12]

num.insert(9, atIndex: 9)

num.removeLast()

num.removeAll()
