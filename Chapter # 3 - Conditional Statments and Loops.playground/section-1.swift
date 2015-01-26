// Playground - noun: a place where people can play

// Playground - noun: a place where people can play

var a = 10

if a == 10 {
    println("true")
}else {
    println("false")
}

var grade = "B"

if grade == "A" {
    println("Your Grade is 'A'")
} else if grade == "B" {
    println("Your Grade is 'B'")
} else if grade == "C" {
    println("Your Grade is 'C'")
} else if grade == "D" {
    println("Your Grade is 'D'")
} else {
    println("Sorry You are FAIL")
}

switch grade {
case "A":
    println("Your Grade is 'A'")
case "B":
    println("Your Grade is 'B'")
case "C":
    println("Your Grade is 'C'")
case "D":
    println("Your Grade is 'D'")
default:
    println("Sorry You are FAIL")
}

var i = 0
while i < 5 {
    println(i)
    i++
}


do{
    println(i)
    i++
}while i < 10


for i = 0; i < 10; i++ {
    println(i)
}

//half open range
for num in 0..<3 {
    println(num)
}

//close range
for num in 0...3 {
    println(num)
}

