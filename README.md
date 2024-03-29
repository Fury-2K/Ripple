# Ripple iOS
Animation, Effects & Transitions for iOS projects.


![platform](https://img.shields.io/badge/platform-iOS-orange)
[![GitHub license](https://img.shields.io/badge/License-Apache2.0-blue.svg)](LICENSE)
![Repository size](https://img.shields.io/github/repo-size/Fury-2K/Ripple)
![GitHub stars](https://img.shields.io/github/stars/Fury-2K/Ripple?style=social)
![GitHub forks](https://img.shields.io/github/forks/Fury-2K/Ripple?style=social)
![GitHub follow](https://img.shields.io/github/followers/Fury-2K?style=social)

This package contains UI components with a custom feel to it.

## What's New ?
- RippleButtonStyle
 
## Languages / Frameworks Used
- SwiftUI
- Swift


![Screenshot](Screenshot 2021-03-12 at 6.41.40 PM.png)

**The project is built supporting iOS 13 and above**

## How to use ?

<img align="center" src="/Resources/button_1.png" width="500"><br><br>

```swift
Button(action: { }) {
    Text("This is ripple button")
        .frame(width: 200, height: 15, alignment: .center)
}
.buttonStyle(RippleButtonStyle(with: .primeblue))
```

or simply create a button and add this as one of its modifiers - 
`.buttonStyle(RippleButtonStyle(with: <insert Color>))`
This has multiple properties to use.
```swift
var color: Color
var lightColor: Color
var shadowColor: Color
var isInternalGradientPresent: Bool
```
- **Color**- This is a mandatory parameter. This is the color for the button.

- **lightColor**- is the color of light source. *Default value = Color.white*

- **shadowColor**- as the name suggests is the shadow color. *Default value = Color.black*

- **isInternalGradientPresent**- This is a boolean flag which toggles the internal color gradient for inner shadows.

## Having trouble ?
* If you are having trouble with this project or if you find any bugs, do open a new issue and describe the problem.
* Alternatively, you can drop me a mail @ manas.agrawal990@gmail.com.

## Spread the word!
Liked the project? Just give it a star ⭐️ and spread the word!

## Credits
**©** **Manas Aggarwal** | *2021*
