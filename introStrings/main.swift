//
//  main.swift
//  introStrings
//
//  Created by Joshua Viera on 10/9/18.
//  Copyright © 2018 Joshua Viera. All rights reserved.
//

import Foundation
// String is a Collection of Characters



//string concatenation - (The plus sign is the concatinate symbol)
let firstName = "Josh"
let lastName = "Viera"
//use a variable fullName to concatenate first name and last name
let fullName = firstName + lastName
print(fullName)
// this will print JoshViera
// if you want to put a space between the name you must put +" "+

//--------------------------

//string interpolation -     \(word) is the interpolation symbol
let year = 2018
//use string interpolation to print out the year 2018
print("the current year is \(year)")
//prints "the current year is 2018"

//-------------------------

//String Literal
let name = "Josh"


//initialization - (set a defsult value)
//INITIALIZITION IS JUST DEFINING SOMETHING (THE EQUAL SIGN)

var date: String = "October 9th , 2018"
print(date)

//--------------------------
 //empty string
let emptyString = ""

//Using ternary operator ? :
emptyString.isEmpty ? print("is empty - using ternary operator") : print("NOT empty - using ternary operator")

//alternate using if/else

if emptyString.isEmpty { // .isEmpty Built in function
    print("is Empty - using if/else")
} else {
    print("NOT EMPTY - using if/else")
}
//-----------------------------

//comparing strings
let str1 = "Pursuit"
let str2 = "C4Q"
//ternary operator ? :
str1 == str2 ? print("youre in both cohorts") : print("Pursuit to the dream")

//Opposite
str1 != str2 ? print("youre in both cohorts") : print("Pursuit to the dream")
//--------------------------------
//initializing
var todayDate = "Oct.9, 2018" //string lioteral
print(todayDate)

//string formatting
let someString = String(format: "%.2f", 10.345)
print("using string formatting to print 2 decimal places \(someString)")
//prints out "...." 10.35

//string mutability
let homePlanet = "earth" //constants are IMMUTABLE
var codingExperience = 0 //variables(var) are MUTABLE - yuou can change them

//Casting
let stringExperience = String(codingExperience)
print("I have \(stringExperience) in coding")



//Value Type - stored in memory

//Value types the original can not be changed
//Reference types the original can be changed

let movie = "Toy Story"
var nextMovie = movie //mutable
nextMovie += " 2"//took a copu of movie and concatenated the number 2
//So it took a copy of Movie and added 2 to it, rather than actually changing movie



//----------------------
//iterating through a string
let iOS = "iOS is awesome!!!!"
for letter in iOS { //using a for/in loop to print out every character of iOS striong
    
    //print() - defaults to printing on seperate line becasue of new line character
    
    print(letter, terminator: "|") //does not default to new line
}
print("")//have to print new string to break the code


//-------------------
// Count characters in a string
// Count is a property on a collection type - counts number of items in collection

print("there are \(iOS.count) characters in the string")

//drop the last chsaracter in a string
//only works in the scope of this print function
print("dropping the last character \(iOS.dropLast())")
//
////if you want to drop it permenately
//iOS = iOS.dropLast()//if iOS was a var this would work and permanetly change the value of iOS
//
//print(iOS)
//---------------------

// reverse String
let greeting = "Hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")

//------------------------

//check if string is a palindrome

let testPalindromeStr = "racecar"
let isPalindrome = String(testPalindromeStr.reversed())
if testPalindromeStr == isPalindrome{
    print("is a palindrome")
} else {
    print("NOT a palindrome")
}
//--------------------

//let testPalindromeStr = "Racecar".lowercased() // when the R is uppercase it holds a different UNICode
//let isPalindrome = String(testPalindromeStr.reversed())
//if testPalindromeStr == isPalindrome{
//    print("is a palindrome")
//} else {
//    print("NOT a palindrome")
//}
//
//
//
//--------------------

//Coampring UniCode scalar vs String literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")
//----------------------

//Unicode is the code behind the character
// U+1F40D is snake
let snake = "\u{1F40D}" //unicode scalar
for _ in 0...10 {
    print(snake, terminator:"")
}

