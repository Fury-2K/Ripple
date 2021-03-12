//
//  RippleRingView.swift
//  Ripple
//
//  Created by Manas Aggarwal on 11/03/21.
//

import SwiftUI

struct RippleRingView: View {
    var height: CGFloat
    var color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 1)
                .stroke(Color("background"), style: .init(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(height: height)
            
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(color, style: .init(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(height: height)
        }
    }
}

struct RippleRingView_Previews: PreviewProvider {
    static var previews: some View {
        RippleRingView(height: 100, color: Color.primeblue)
    }
}
