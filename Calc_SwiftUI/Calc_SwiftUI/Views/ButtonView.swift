//
//  ButtonView.swift
//  Calc_SwiftUI
//
//  Created by Akash Shrestha on 2024-10-24.
//

import SwiftUI

struct ButtonView: View {
    
    let calcButton: CalcButton
    let getLandscpaeMode: Bool
    var tapAction: () -> Void
    @Environment(\.colorScheme) var colorScheme
    @State private var isPressed = false
    
    var body: some View {
        Text(calcButton.title)
            .font(.system(size: getLandscpaeMode ? 28 : 32))
            .frame(width: buttonWidth(), height: buttonHeight())
            .background((colorScheme == .dark ? Color.gray : calcButton.color)
                .opacity(isPressed ? 0.3 : 1.0)) // Dark mode adaptation
            .foregroundColor(colorScheme == .dark ? .white : .black) // Adapt text color
            .cornerRadius(buttonWidth() / 2)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        withAnimation {
                            isPressed = true
                        }
                    }
                    .onEnded { _ in
                        withAnimation {
                            isPressed = false
                        }
                        tapAction()
                    }
            )
    }
    
    private func buttonWidth() -> CGFloat {
        return calcButton == .zero ? (getLandscpaeMode ? 200 : 160) : (getLandscpaeMode ? 140 : 80)
    }
    
    private func buttonHeight() -> CGFloat {
        return getLandscpaeMode ? 40 : 80
    }
}
