//
//  View+InfinityFrame.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 5/4/2569 BE.
//

import SwiftUI

extension View {
  func infinityFrame() -> some View {
    self
      .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}
