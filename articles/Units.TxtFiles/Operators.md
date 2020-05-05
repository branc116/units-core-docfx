
# Operators

Define what operators you want to use with your units.

Subcommands:
 * [Binary](#operators-binary)
 * [Unary](#operators-unary)
 * [Self](#operators-self)

---


## Operators Binary



#### Parameters
* symbol: System.String - What symbol will be used for this operator (**+**, **-**, **\***, ...)
* name: System.String - What is the name of the symbol
* leftCount: System.String
* rightCount: System.String

Left count and right count are defined defined like this:
If one has an expression expr1 op expr2 then that the count of expr1 will be expr1.count * op.leftCount and
cout of expr2 will be expr2.count * op.rightCount.
This is useful if one have custom operator that behve unexpectedly.

#### Usage

``` Operators(Binary) := (*, Times, 1, 1) ```

This will add binary operator that has left count 1 and the right count 1 -- Multiplication.

To get and expected behaviar add this line of code to units.txt file: 

``` Operators(Binary) := (*, Times, 1, 1) | (/, Per, 1, -1) ```

---

## Operators Unary

Add new unary operator.

#### Parameters
* name: System.String - Name of the unary operator. When generating code this will be used as a method name.
* rightCount: System.String

Similar to the explenation for leftCount and rightCount in Operator Binary command.

#### Usage

``` Operators(Unary) := Square, 2 | SquareRoot, 0.5 ```

This will add 2 unary operator: Square and Square root 

---

## Operators Self

Operator that will not change the units type to other units type.
This operator will return the constant type - no matter what is the state.

#### Parameters
* symbol: System.String - Symbol ( **+**, **-**, **/**, ...)
* name: System.String - Name of the operator
* retName: System.String - Return type of the operation or **"null"** if the return type is equal to unit

#### Usage

``` Operators(Self) := (<=, LessOrEqualThen, bool) | (==, Equal, bool) | (+, Plus, null) ```

This will define 3 new self operators **<=**, **==**, **+**

Standard operators that one'd like to have defined are:

``` Opeartors(Self) := (<, Lt, bool) | (<=, Let, bool) | (>, Gt, bool) | (>=, Get, bool) | (==, Eq, bool) | (!=, Ne, bool) | (+, Plus, null) | (-, Minus, null) ```

---