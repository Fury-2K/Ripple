//
//  RippleButton.swift
//  Ripple
//
//  Created by Manas Aggarwal on 27/01/21.
//

import SwiftUI

public struct RippleButton: View {
    
    var width: CGFloat
    var height: CGFloat
    var color: Color
    var text: String
    @State var isTapped: Bool = false
    
    public init(width: CGFloat,
                height: CGFloat,
                color: Color,
                text: String) {
        self.width = width
        self.height = height
        self.color = color
        self.text = text
    }
    
    public var body: some View {
        Button(action: { isTapped.toggle() }, label: {
            Text(text)
                .font(.system(size: 18, weight: .regular))
                .frame(width: width, height: height)
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
                            LinearGradient(gradient: Gradient(colors: [Color.background.opacity(0.4), color.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
    }
}

struct RippleButton_Previews: PreviewProvider {
    static var previews: some View {
        RippleButton(width: 75, height: 15, color: Color.primeblue, text: "Next")
    }
}

public class YOViewVm {
    func testA() {
        print(0)
    }
}
