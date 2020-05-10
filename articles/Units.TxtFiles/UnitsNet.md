
# UnitsNet

Command for integration with current state-of-the-art units library for c#

Subcommands:
 * [Dimension](#unitsnet-dimension)
 * [All](#unitsnet-all)

---


## UnitsNet Dimension

Use dimension defined in UnitsNet library.

#### Parameters
* dimensionName: System.String - Dimension name you want to grab from UnitsNet library

#### Usage

``` UnitsNet(Dimension) := Length | Mass | Duration | Acceleration | Speed ```

This will grab all the inforomation for the dimensions that UnitsNet team has defined.

It will grab Names of the dimensions, measurement names, expressions for converion, descriptions for the units, ...

---

## UnitsNet All

Grab everything for every unit that UntisNet team has defined.
It's about 80 dimensions and for every dimension about 5 units of measurement.

#### Usage

``` !UnitsNet All  ```

Grabs everything that UnitsNet has.
---