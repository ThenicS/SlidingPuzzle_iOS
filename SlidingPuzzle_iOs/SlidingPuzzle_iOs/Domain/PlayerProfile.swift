//
//  PlayerProfile.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 6/4/2569 BE.
//

import SwiftUI

struct PlayerProfile: Equatable {
  var name: String?
  var image: ImageResource
  var preferredBoardType: BoardType
}

extension PlayerProfile {
  static var defaultPlayer: Self {
    .init(name: nil, image: .char01, preferredBoardType: .number3x3)
  }
}
