//
//  Difficulty.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 7/4/2569 BE.
//

import Foundation

enum Difficulty: String, CaseIterable {
  case easy
  case hard
}

extension Difficulty: CustomStringConvertible {
  var description: String {
    return rawValue.capitalized
  }
}
