//
//  RippleButton.swift
//  Ripple
//
//  Created by Manas Aggarwal on 27/01/21.
//

import SwiftUI

struct RippleButtonStyle: ButtonStyle {
    
    // MARK: Properties
    
    var color: Color
    var lightColor: Color
    var shadowColor: Color
    
    // MARK: Initialization
    
    init(with color: Color,
         lightColor: Color = .white,
         shadowColor: Color = .black) {
        self.color = color
        self.lightColor = lightColor
        self.shadowColor = shadowColor
    }
    
    // MARK: Where magic happens
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 18, weight: .regular))
            .padding(.all)
            .foregroundColor(.white)
            .background(
                ZStack {
                    color
                    // background color
                    RoundedRectangle(cornerRadius: 30, style: .circular)
                        .foregroundColor(color)
                        .blur(radius: 1)
                        .offset(x: -1, y: -1)
                    
                    // inner gradient shadow
                    RoundedRectangle(cornerRadius: 30, style: .circular)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [shadowColor.opacity(0.15), color.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottom)
                        )
                        .padding(3.5)
//                        .offset(x: 0.5, y: 1)
                        .blur(radius: 1)
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            // dark shadow
            .shadow(color: shadowColor.opacity(0.8), radius: 10, x: 7, y: 5)
            // light shadow
            .shadow(color: lightColor.opacity(0.15), radius: 10, x: -7, y: -5)
    }
}

struct RippleButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
                .frame(width: .infinity, height: .infinity, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            Button(action: { }) {
                Text("This is ripple bitch")
                    .frame(width: 200, height: 15, alignment: .center)
            }
            .buttonStyle(RippleButtonStyle(with: .primeblue))
        }
    }
}

public class YOViewVm {
    func testA() {
        print(0)
    }
}
