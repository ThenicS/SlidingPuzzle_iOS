//
//  Container+Registration.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 1/4/2569 BE.
//

import Factory

extension Container {
  var appModeStore: Factory<AppModeLiveStore> {
    self { MainActor.assumeIsolated { AppModeLiveStore() } }.singleton
  }
}

