//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
var numerator = 0
while 1 == 1 {
    print("Numerator?")
    guard let input1 = readLine() else {
        continue
    }
    
    guard let numerator1 = Int(input1) else {
        continue
    }
    
    if numerator1 < 0 {
        continue
    }
    
    numerator = numerator1
    break
}



var denominator = 0
while 1 == 1 {
    
    print("Denominator?")
    guard let input1 = readLine() else {
        continue
    }
    
    guard let denominator1 = Int(input1) else {
        continue
    }
    
    if denominator1 < 1 {
        continue
    }
    
    denominator = denominator1
    break
}

if numerator % denominator == 0 {
    print("The result is: \n\(numerator/denominator)")
    exit(9)
}


var extraNumerator = 0
var extraDenominator = 0
var fullNumbers = numerator / denominator

if numerator % denominator != 0 {
    for i in stride(from: denominator/2, through: 2, by: -1) {
        
        if (numerator % denominator) % i == 0 && denominator % i == 0 {
            extraNumerator = (numerator % denominator) / i
            extraDenominator = denominator / i
        } else {
            continue
        }
        break
    }
    
}

if extraDenominator == 0 && extraNumerator == 0 {
    print("The result is: \n\(fullNumbers) \(numerator % denominator)/\(denominator)")
} else {
    print("The result is: \n\(numerator/denominator) \(extraNumerator)/\(extraDenominator)")
}


// PROCESS
// Implement the primary logic of the problem here


// OUTPUT
// Report results to the user here

