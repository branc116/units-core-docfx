
# Real

Define what types you want to have Units.Core work with. You can have clr types like **float** or **double**.
Or you can have types that are defined in 3rd party librarers like **Godot.Vector3** or **UnityEngine.CoreModule.Vector2**, ...
Or you can have your own types that you defined in your own library.

If you are using 3rd pary library you have to reference it using nuget or dll reference and you have to provide
the full name (E.g. if you want to use Vector3 defined in Godot package, you have to specify **Godot.Vector3**)

Subcommands:
 * [Types](#real-types)

---


## Real Types

Used for adding new wrapper types.


#### Parameters
* clrTypeName: System.String - Name of the base type
* wrapperName: System.String - Name of the wrapper type

#### Usage

``` !Real Types float, floatWrapper ```

This will create new Wrapper type that wraps float type inside itself.
Foreach new defined type all of the units defined will be genererated.

This implyes that if you define 10 units and 2 wrapper types there will be defined:
* 10 unit types for 1st wrapper type
* 10 unit types for 2nd wrapper type
* Scalar type for 1st wrapper type
* Scalar type for 2nd wrapper type
* generic inteface that 1st and 2nd wrapper must implement

---

#### Plans for the future

Plans for the future are to have operations between wrapper types.
In those operations one could define how to convert between wrapper types.


E.G. 

1st wrapper class is Vector3
2nd wrapper class is float

It should be possible to define operation between them

**Vector3** * **float** = **Vector3**
**Vector3** / **float** = **Vector3**
**Vector3** + **float** = **Vector3**
**Vector3** - **float** = **Vector3**
