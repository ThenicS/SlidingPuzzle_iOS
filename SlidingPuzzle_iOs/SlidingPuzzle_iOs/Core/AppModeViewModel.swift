//
//  AppModeViewModel.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 26/3/2569 BE.
//

import Foundation
import Observation
import Factory


//@Observable
final class AppModeViewModel{
  var appMode: AppMode = .gameSetup
  
  @ObservationIgnored
  @Injected(\.appModeStore) var appModeStore
  
  init() {
    updateAppMode()
  }
}

private extension AppModeViewModel {

  func updateAppMode() {
    appMode = appModeStore.appMode
  }
 }
