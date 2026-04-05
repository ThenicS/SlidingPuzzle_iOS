//
//  View+Color.swift
//  SlidingPuzzle_iOs
//
//  Created by Naroot Hanyuenyong on 3/4/2569 BE.
//

import SwiftUI

extension Color {
  static var appTheme: AppColorTheme = main
}

extension Color {
  static var main: AppColorTheme {
    .init(
      accent: .init(.accent),
      alternateAccent: .init(.alternateAccent),
      viewBackground: .init(.viewBackground),
      cellBackground: .init(.cellBackground),
      text: .init(.text),
      secondaryText: .init(.secondaryText),
      alternateText: .init(.alternateText),
      accentContrastText: .init(.accentContrastText),
      primaryAction: .init(.primaryAction),
      neutralAction: .init(.neutralAction),
      destructive: .init(.destructive),
      success: .init(.success),
      warning: .init(.warning),
      info: .init(.info),
      error: .init(.error),
      inProgress: .init(.inProgress),
      divider: .init(.divider),
      miscellaneous: .init(.miscellaneous),
      pastelSet_01: .init(.pastelSet01),
      pastelSet_02: .init(.pastelSet02),
      pastelSet_03: .init(.pastelSet03),
      pastelSet_04: .init(.pastelSet04)
    )
  }
}

struct AppColorTheme {
  let accent: Color
  let alternateAccent: Color
  let viewBackground: Color
  let cellBackground: Color
  let text: Color
  let secondaryText: Color
  let alternateText: Color
  let accentContrastText: Color
  let primaryAction: Color
  let neutralAction: Color
  let destructive: Color
  let success: Color
  let warning: Color
  let info: Color
  let error: Color
  let inProgress: Color
  let divider: Color
  let miscellaneous: Color
  let pastelSet_01: Color
  let pastelSet_02: Color
  let pastelSet_03: Color
  let pastelSet_04: Color
}

#Preview("Light Mode") {
  Preview()
    .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
  Preview()
    .preferredColorScheme(.dark)
}

fileprivate struct Preview: View {
  var body: some View {
    VStack {
      VStack {
        Text("Title")
          .foregroundColor(.appTheme.text)
        Text("Subtitle")
          .foregroundColor(.appTheme.secondaryText)
      }

      Divider()
        .foregroundColor(.appTheme.divider)
        .padding(.horizontal)

      Button { } label: {
        Text("Get Started")
          .padding()
          .background(Color.appTheme.accent)
          .cornerRadius(8)
          .foregroundColor(.appTheme.accentContrastText)
      }
      .padding()
      Button {} label: {
        Text("Pastel")
          .padding()
          .background(Color.appTheme.pastelSet_02)
          .cornerRadius(8)
          .foregroundColor(.white)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.appTheme.viewBackground)
  }
}
