//
//  BoardType.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 6/4/2569 BE.
//

import SwiftUI

enum BoardType {
  case number3x3
  case number4x4
  case image3x3
  case image4x4
}

extension BoardType {
  var gridSize: Int {
    switch self {
    case .number3x3, .image3x3:
      return 3
    case .number4x4, .image4x4:
      return 4
    }
  }
  
  var tileCount: Int {
    gridSize * gridSize
  }
  
  var isImageBoard: Bool {
    switch self {
    case .image3x3, .image4x4:
      return true
    default:
      return false
    }
  }
  
  var description: String {
    switch self {
    case .number3x3:
      return "3x3"
    case .number4x4:
      return "4x4"
    case .image3x3:
      return "3x3"
    case .image4x4:
      return "4x4"
    }
  }
  
  //  var toggleType: BoardType {
  //    switch self {
  //    case .number3x3: return .image3x3
  //    case .number4x4: return .image4x4
  //    case .image3x3:  return .number3x3
  //    case .image4x4:  return .number4x4
  //    }
  //  }
  
  var previewImage: ImageResource {
    switch self {
    case .number3x3: return .puzzleNum3X3
    case .number4x4: return .puzzleNum4X4
    case .image3x3: return .puzzleImg01
    case .image4x4: return .puzzleImg01
    }
  }
  
  // สำหรับ cycle ไปค่าถัดไปเวลากด arrow
  var next: BoardType {
      let all: [BoardType] = [.image3x3, .image4x4, .number3x3, .number4x4]
      let index = all.firstIndex(of: self) ?? 0
      return all[(index + 1) % all.count]
  }
}
