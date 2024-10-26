//
//  ContentView.swift
//  Calc_SwiftUI
//
//  Created by Akash Shrestha on 2024-10-24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = CalcViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    let buttons: [[CalcButton]] = [
        [.ac, .minusPlus, .remainder, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .add],
        [.one, .two, .three, .subtract],
        [.zero, .dot, .equals]
    ]
    var body: some View {
        VStack {
            Spacer()
            
            // MARK: Display Number
            Text(viewModel.displayNumber)
                .foregroundStyle(Color(colorScheme == .dark ? .white : .black))
                .font(.system(size: 65))
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
            
            // MARK: Buttons
            VStack(spacing: 12) {
                ForEach(buttons, id: \.self) { buttons in
                    HStack(spacing: 12) {
                        ForEach(buttons, id: \.self) { button in
//                            ButtonView(calcButton: button).onTapGesture {
//                                viewModel.didTap(button: button)
//                            }
                            
                            ButtonView(calcButton: button) {
                                viewModel.didTap(button: button)
                            }
                        }
                    }
                }
            }
            .padding(.bottom, 40)
        }
        .background(colorScheme == .dark ? .black : .white)
        .edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    ContentView()
}
