//
//  function.swift
//  smallestMultiple
//
//  Created by Guillermo Montalban Martinez on 28/12/2019.
//  Copyright © 2019 Guillermo Montalban Martinez. All rights reserved.
//

import Foundation

func smallestMultiple() -> (number: UInt,time: Double) {
  var end:Bool = true
  var smallestMultiple:UInt?
  let initialTime = Date()
  let arrayPrime:[UInt] = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  for i:UInt in 2520...500000000 {
    end = true
    for j:UInt in arrayPrime {
      if i % j != 0 {
        end = false
        break
      }
    }
    if end == true {
      smallestMultiple = i
      let finalTime = Date().timeIntervalSince(initialTime)
      return (smallestMultiple ?? 0, Double(finalTime))
    }
  }

  return (smallestMultiple ?? 0, 0.0)
}
