//
//  Constants.swift
//  Ripple
//
//  Created by Manas Aggarwal on 27/01/21.
//

import Foundation
import SwiftUI

public extension Color {
    static let background = Color(hex: 0x202426)
    static let primeblue = Color(hex: 0x3D439C)
    static let graysome = Color(hex: 0xD1D6E4)
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
