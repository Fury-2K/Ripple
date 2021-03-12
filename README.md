# Ripple

`RippleButtonStyle()`

This is a button style aimed at helping you to add a custom neumorphic design style to your button.

**How to Use-**
```
Button(action: { }) {
    Text("This is ripple bitch")
        .frame(width: 200, height: 15, alignment: .center)
}
.buttonStyle(RippleButtonStyle(with: .primeblue))
```
or simply create a button and add this as one of its modifiers - 
`.buttonStyle(RippleButtonStyle(with: <insert Color>))`

This has multiple properties to use.
```
var color: Color
var lightColor: Color
var shadowColor: Color
```
- **Color**- This is a mandatory parameter. This is the color for the button.

- **lightColor**- is the color of light source. *Default value = Color.white*

- **shadowColor**- as the name suggests is the shadow color. *Default value = Color.black*

