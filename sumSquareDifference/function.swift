//
//  function.swift
//  sumSquareDifference
//
//  Created by Guillermo Montalban Martinez on 28/12/2019.
//  Copyright © 2019 Guillermo Montalban Martinez. All rights reserved.
//

import Foundation

func sumOfTheSquares() -> (Int, Int) {
  var resultSumOfTheSquares:Int = 1
  var resultTheSquareOfTheSum:Int = 1
  
  for i in 2...100 {
    resultSumOfTheSquares += Int(pow(Double(i), 2.0))
    resultTheSquareOfTheSum += i
  }
  resultTheSquareOfTheSum = Int(pow(Double(resultTheSquareOfTheSum), 2.0))
  
  return (resultSumOfTheSquares, resultTheSquareOfTheSum)
}
