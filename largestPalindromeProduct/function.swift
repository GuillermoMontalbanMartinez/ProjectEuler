//
//  function.swift
//  LargestPalindromeProduct
//
//  Created by Guillermo Montalban Martinez on 25/12/2019.
//  Copyright © 2019 Guillermo Montalban Martinez. All rights reserved.
//

import Foundation

func isPalindromeNumber(_ number:Int) -> Bool {
  var numberFunction = number
  var sentinel:Int = 0
  var result:Int = 0
  var firstPivot:Int = 0
  var secondPivot:Int = 0
  var vector:[Int] = []
  vector.reserveCapacity(6)
  
  while numberFunction > 0 {
    result = numberFunction % 10
    vector.insert(result, at: sentinel)
    numberFunction /= 10
    sentinel += 1
  }
  
  secondPivot = vector.count - 1
  
  for _ in 0...(vector.count - 1) {
    if vector[firstPivot] != vector[secondPivot] {
      return false
    } else {
      firstPivot += 1
      secondPivot -= 1
    }
  }
  
  return true
}


func largestPalindromeProductor() -> Int {
  var vector:[Int] = []
  var result:Int = 0
  for i in (100...999).reversed() {
    for j in (100...999).reversed() {
      result = i*j
      if isPalindromeNumber(result) {
        vector.append(result)
      }
    }
  }
  vector.sort()
  
  return vector.last!
}
