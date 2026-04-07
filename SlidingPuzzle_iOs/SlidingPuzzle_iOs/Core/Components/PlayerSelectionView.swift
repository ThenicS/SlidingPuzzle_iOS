//
//  PlayerSelectionView.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 5/4/2569 BE.
//

import SwiftUI

// TODO: เพิ่ม boardTypeView PreffredImage

struct PlayerSelectionView: View {
  @Binding var player: PlayerProfile
  
  private let avartars: [ImageResource] = [.char01, .char02, .char03, .char04, .char05, .char06, .char07]
  
  var body: some View {
    HStack(spacing: 8) {
      playerView(profile: $player)
      Spacer()
      boardTypeView(profile: $player)
    }
    .padding(12)
    .background(Color.appTheme.cellBackground)
    .cornerRadius(.cell)
  }
}

private extension PlayerSelectionView {
  
  func playerView(profile: Binding<PlayerProfile>) -> some View {
    VStack(spacing: 8) {
      characterImageArrowSwitcher(profile: profile)
      characterImageView(profile: profile.wrappedValue)
      
      HStack(spacing: 5) {
        Text("Avartar")
          .font(.headline)
          .foregroundStyle(Color.appTheme.accent)
      }
    }
  }
  
  func characterImageArrowSwitcher(profile: Binding<PlayerProfile>) -> some View {
    Image(systemName: "arrowtriangle.up.fill")
      .font(.title2)
      .foregroundStyle(Color.appTheme.accent)
      .button(.press) {
        withAnimation(.easeInOut) {
          switchProfileImage(profile: profile)
        }
      }
  }
  
  func characterImageView(profile: PlayerProfile) -> some View {
    Image(profile.image)
      .resizable()
      .frame(width: 60, height: 60)
  }
  
  //$$ boardTypeView Section $$//
  
  func boardTypeView(profile: Binding<PlayerProfile>) -> some View {
    VStack(spacing: 8) {
      boardTypeImageArrowSwitcher(profile: profile)
      boardPreviewImageView(profile: profile.wrappedValue)
      HStack(spacing: 5) {
        boardDescription(profile: profile.wrappedValue)
      }
    }
  }
  
  func boardTypeImageArrowSwitcher(profile: Binding<PlayerProfile>) -> some View {
    Image(systemName: "arrowtriangle.up.fill")
      .font(.title2)
      .foregroundStyle(Color.appTheme.accent)
      .button(.press) {
        withAnimation(.easeInOut) {
          switchBoardImage(profile: profile)
        }
      }
  }
  
  func boardPreviewImageView(profile: PlayerProfile) -> some View {
    Image(profile.preferredBoardType.previewImage)
      .resizable()
      .frame(width: 60, height: 60)
  }
  
  func boardDescription(profile: PlayerProfile) -> some View {
    Text("\(profile.preferredBoardType.description)")
      .font(.headline)
      .foregroundStyle(Color.appTheme.accent)
  }
  
}

///////////////////////////////////////////////////////////////
private extension PlayerSelectionView {
  func switchProfileImage(profile: Binding<PlayerProfile>) {
    var updated = profile.wrappedValue
    
    if let index = avartars.firstIndex(of: updated.image) {
      updated.image = avartars[(index + 1) % avartars.count]
    } else {
      updated.image = .char01
    }
    
    profile.wrappedValue = updated
  }
  
  func switchBoardImage(profile: Binding<PlayerProfile>) {
    var updated = profile.wrappedValue
    
    updated.preferredBoardType = updated.preferredBoardType.next
    profile.wrappedValue = updated
  }
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
  @State private var player: PlayerProfile = .defaultPlayer
  
  var body: some View {
    PlayerSelectionView(player: $player)
      .infinityFrame()
      .padding()
      .background(Color.appTheme.viewBackground)
  }
}
