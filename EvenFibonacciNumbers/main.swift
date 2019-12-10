//
//  main.swift
//  EvenFibonacciNumbers
//
//  Created by Guillermo Montalban Martinez on 10/12/2019.
//  Copyright © 2019 Guillermo Montalban Martinez. All rights reserved.
//

import Foundation

var x0: UInt32 = 1
var x1: UInt32 = 2
var xn: UInt32 = 1
var result: UInt32 = 2

while xn <= 4000000 {
  if xn % 2 == 0 {
     result += xn
     xn = x0 + x1
     x0 = x1
     x1 = xn
  } else {
     xn = x0 + x1
     x0 = x1
     x1 = xn
  }
}

print(result)



