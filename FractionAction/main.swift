//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation


// creating a variable for the numerator
var numerator = 0
while 1 == 1 {
    
    // prompt for a numerator
    print("Numerator?")
    
    // check if nil
    guard let input1 = readLine() else {
        continue
    }
    
    // check if it is a number (Int)
    guard let numerator1 = Int(input1) else {
        continue
    }
    
    // check if the numerator if non negative
    if numerator1 < 0 {
        continue
    }
    
    // put the numerator in its correct variable and break the loop
    numerator = numerator1
    break
}


// Making a variable for the denominator
var denominator = 0
while 1 == 1 {
    
    // prompt for the denominator
    print("Denominator?")
    
    // check for nil
    guard let input1 = readLine() else {
        continue
    }
    
    // check if it is an Int
    guard let denominator1 = Int(input1) else {
        continue
    }
    
    // Make sure the denominator is positive and above zero
    if denominator1 < 1 {
        continue
    }
    
    // put the denominator in its correct variable and break the loop
    denominator = denominator1
    break
}

// If the fraction gives only full numbers than divide and print the number
if numerator % denominator == 0 {
    print("The result is: \n\(numerator/denominator)")
    exit(9)
}


// creating the values for the full numbers and for whats left over.
var extraNumerator = 0
var extraDenominator = 0
var fullNumbers = numerator / denominator

// Check to see if there is a full number
if numerator % denominator != 0 {
    
    // going down from the half of the denominator chech if there is a common factor
    for i in stride(from: denominator/2, through: 2, by: -1) {
        
        if (numerator % denominator) % i == 0 && denominator % i == 0 {
            
            // if a common factor is found then reduce the fraction
            extraNumerator = (numerator % denominator) / i
            extraDenominator = denominator / i
            print("The result is: \n\(fullNumbers) \(extraNumerator)/\(extraDenominator)")
            exit(9)
        } else {
            continue
        }
    }
    
}

// to see that there is no full number meaning there is only a fraction (anwser of less than 1)
if fullNumbers == 0 {
    var reducedNumerator = 0
    var reducedDenominator = 0
    
    // starting from the helf way point of the denominator and going down check for common factors.
    for i in stride(from: denominator/2, through: 2, by: -1) {
        
        // if a common farctor is found, reduce the fraction and end the program
        if numerator % i == 0 && denominator % i == 0 {
            reducedNumerator = numerator / i
            reducedDenominator = denominator / i
            print("The result is: \n\(reducedNumerator)/\(reducedDenominator)")
            exit(9)
        }
        
    }
}

// if the program makes it to this point with zero full numbers than there must be a prime number
if fullNumbers == 0 {
    print("The result is: \n\(numerator)/\(denominator)")
    exit(9)
}


if extraDenominator == 0 && extraNumerator == 0 {
    // if this condition is ture then that means no common factor was found for what was left of the fraction
    print("The result is: \n\(fullNumbers) \(numerator % denominator)/\(denominator)")
}





