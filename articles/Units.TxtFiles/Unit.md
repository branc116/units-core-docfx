# Unit

Command for defining new measuremen.


---


## Unit 

Unit(for) := (name, expr, sym)

#### Parameters
* for: System.String - for what unit do you want to define measurement
* name: System.String - name of the measurement
* expr: System.String - expression to convert the mesurment to the base measurement
* sym: System.String - what is the symbol for the measurement

#### Usage

``` Unit(Length) := (meter, x, m) | (mile, x * 0.00062137, mile) ```

---