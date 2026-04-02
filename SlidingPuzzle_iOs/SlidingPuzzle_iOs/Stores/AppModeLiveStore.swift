//
//  AppModeLiveStore.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 1/4/2569 BE.
//

import Foundation
import Observation

@Observable
@MainActor
final class AppModeLiveStore {
  private(set) var appMode: AppMode = .gameSetup
  
  
  func goGameMode() {
    appMode = .game
  }
  
  func goSetupMode() {
    appMode = .gameSetup
  }
}


