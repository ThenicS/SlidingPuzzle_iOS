//
//  AppModeView.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 26/3/2569 BE.
//

import SwiftUI
// ใช้ @State private var viewModel = AppModeViewModel() แทน @StateObject

struct AppModeView: View {
  @State var viewModel = AppModeViewModel()
  
  var body: some View {
    Group {
      switch viewModel.appMode {
      case .gameSetup:
        Text("Game Setup")
      case .game:
        Text("Game")
      }
    }
    .animation(.easeIn, value: viewModel.appMode)
  }
}

#Preview {
  AppModeView()
}
