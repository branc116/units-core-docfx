# New unit

New unit is a command for defining new units out of the previusly defined ones.

This command is special beause it is one of the more important commands and it has nicer-to-work-with
syntax.

---

## Nicer to working with syntax

Area := Length * Length

This will define new unit called **Area** like **Length \* Length**.

## NewUnit Binary

Define new binary Unit

#### Parameters
* newUnitName: System.String - Name of the newly defined unti
* leftUnit: System.String - Name of the left operand
* operator: System.String - Name of the operator
* rightUnit: System.String - Name of the right operand

#### Usage

``` !NewUnit Binary Area, Length, \*, Length ```

This will define new unit called **Area** like **Length \* Length**.

---

## NewUnit Unary

Define the new unit with one known unit and one unary operator

### Nice syntax

```Area := squared Length```

This will create new unit called **Area** that is defined like **Length²**.


#### Parameters
* newUnitName: System.String - Name of the new unit
* operator: System.String - Name of the unary operator
* rightUnit: System.String - Name of the operand

#### Usage

``` !NewUnit Unary Area, squared, Length ```

This will create new unit called **Area** that is defined like **Length²**.

---