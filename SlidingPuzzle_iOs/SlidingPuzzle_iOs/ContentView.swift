//
//  ContentView.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 26/3/2569 BE.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "square")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Sliding Puzzle")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
