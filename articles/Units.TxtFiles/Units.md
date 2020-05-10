# Units

Define base units or define prefixes for the units.

Subcommands:
 * [Base](#units-base)
 * [Prefixes](#units-prefixes)

---


## Units Base

What base units do you want to generate code for.

#### Parameters
* name: System.String - Name of the base unit

#### Usage

``` Units(Base) := Length | Mass | Duration ```

Command will define 3 base units   **Length**, **Mass** and **Duration**.

---

## Units Prefixes

Define prefixes for the measurement.

#### Parameters
* name: System.String - name of prefix
* expression: System.String - expression to convert the prefix to base prefix.

#### Usage

``` !Units(Prefixes) := (mili, x*1000) | (Kilo, x*0.001) | (Mega, x*10e-6) | (micro, x*10e6) ```

Command will define 4 prefixes **mili**, **Kilo**, **Mega**, **micro** and the expressions how to convert to
base measurement without prefix.

---