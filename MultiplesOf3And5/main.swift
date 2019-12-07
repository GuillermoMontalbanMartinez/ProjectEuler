//
//  main.swift
//  MultiplesOf3And5
//
//  Created by Guillermo Montalban Martinez on 07/12/2019.
//  Copyright © 2019 Guillermo Montalban Martinez. All rights reserved.
//

import Foundation

var counter:Int = 3
var result:Int = 0

while counter < 1000 {
  if counter % 3 == 0 || counter % 5 == 0 {
    result += counter
  }
  counter += 1
}

print(result)
