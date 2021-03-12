//
//  RippleButton.swift
//  Ripple
//
//  Created by Manas Aggarwal on 27/01/21.
//

import SwiftUI

public struct RippleButton: View {
    
    @State var isTapped: Bool = false
    
    public init() { }
    
    public var body: some View {
        Button(action: { isTapped.toggle() }, label: {
            Text("Next")
                .font(.system(size: 18, weight: .regular))
                .frame(width: 75, height: 15)
                .padding(.all)
                .foregroundColor(.white)
                .background(
                    ZStack {
                        Color.primeblue
                        // background color
                        RoundedRectangle(cornerRadius: 30, style: .circular)
                            .foregroundColor(Color.primeblue)
                        .blur(radius: 1)
                        .offset(x: -1, y: -1)
                        
                        // inner gradient shadow
                        RoundedRectangle(cornerRadius: 30, style: .circular)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.4), Color.primeblue.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .padding(3.5)
                        .blur(radius: 1)

                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                // dark shadow
                .shadow(color: Color.black.opacity(0.8), radius: 10, x: 7, y: 5)
                // light shadow
                .shadow(color: Color.white.opacity(0.15), radius: 10, x: -7, y: -5)
        })
//        VStack(spacing: 32) {
//            Button(action: { isTapped.toggle() }, label: {
//                Text("Next")
//                    .font(.system(size: 18, weight: .regular))
//                    .frame(width: 75, height: 15)
//                    .padding(.all)
//                    .foregroundColor(.white)
//                    .background(
//                        ZStack {
//                            Color.primeblue
//                            // background color
//                            RoundedRectangle(cornerRadius: 30, style: .circular)
//                                .foregroundColor(Color.primeblue)
//                            .blur(radius: 1)
//                            .offset(x: -1, y: -1)
//
//                            // inner gradient shadow
//                            RoundedRectangle(cornerRadius: 30, style: .circular)
//                            .fill(
//                                LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.4), Color.primeblue.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                            )
//                            .padding(3.5)
//                            .blur(radius: 1)
//
//                        }
//                    )
//                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
//                    // dark shadow
//                    .shadow(color: Color.black.opacity(0.8), radius: 10, x: 7, y: 5)
//                    // light shadow
//                    .shadow(color: Color.white.opacity(0.15), radius: 10, x: -7, y: -5)
//            })
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.background).ignoresSafeArea(.all)
    }
}

struct RippleButton_Previews: PreviewProvider {
    static var previews: some View {
        RippleButton()
    }
}

public class YOViewVm {
    func testA() {
        print(0)
    }
}
