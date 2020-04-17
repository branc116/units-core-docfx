# Units Core

## Tool For:
* generating unit definitions
* operations between them
* maintaining consistency

Units that are generated are based on the definion file that is defined like this [antlr definition](/media/Grammar.html)

Example definition is:

```Go
Units(Base) := Mass | Length | Time
Units(Prefixes) := (mili, i/1000) | (micro, i/10e6) | (kilo, i*1000) | (mega, i*1e6)
Operators(Binary) := (*, Times, 1, 1) | (/, Per, 1, -1)
Operators(Unary) := (Square, 2) | (SquareRoot, 0.5)
Operators(Self) := (<, Lt, bool) | (>, Gt, bool) | (==, Eq, bool) | (+, Plus, null) | (-, Minus, null) | (*, Times, null) | (/, Per, null)

Real(Types) := (System.Single, RealFloat) | (Godot.Vector3, Vec3)

Operator(*) := a = b * c | a = c * b | c = a / b | b = a / c
Operator(/) := a = b / c | c = b / a | b = a * c | b = c * a
# Operator(Square) := a = Square b | b = SquareRoot a | a = b * b #

Speed := Length / Time
Acceleration := Speed / Time
Area := Length * Length
Volume := Area * Length
Force := Mass * Acceleration
Pressure := Force / Area
Energy := Force * Length

!Infer

Unit(Mass) := (gram, i, g)
Unit(Length) := (meter, i, m)
Unit(Time) := (second, i, s) | (hour, i/3600, h) | (minute, i/60, min)
Unit(Temperature) := (kelvin, i, K) | (celsius, i + 273, ˙C)
Unit(Force) := (newton, i, N)

!Export Units, ./Units.cs
!Export RealWrapers, ./Wrapers.cs
```

## You can check out the whole code base [Here](/api)