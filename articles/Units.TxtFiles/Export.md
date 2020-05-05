# Export

SubCommands: 
 * Units
 * RealWrappers
 * All


Command export is used when you want to export current deffinition to specific location.

---


## Export Units

This will create C# files that will have definitions of the units you defined in rest of the units.txt file

#### Parameters:
* output location: string - Where do you want the to export files *relative to the units.txt file*.

#### Usage: 

``` !Export Units MyAwesomeUnits | Units MyAwesomeUnits2 ```

This will export units to 2 locations:
* ./MyAwesomeUnits
* ./MyAwesomeUnits2

---

## Export RealWrappers

Create the files that wrap the cli type or your own custom type. This files should be modified by the user
if the definion of operations is not correct.

#### Parameters:
* output location: string - Where do you want the to export files *relative to the units.txt file*.

#### Usage: 

``` !Export RealWrappers MyAwesomeUnits | RealWrappers MyAwesomeUnits2 ```

This will export wrappers for defined types in 2 locations:
* ./MyAwesomeUnits
* ./MyAwesomeUnits2

---

## Export All

Exports units and wrappers to specified location

#### Parameters:
* output location: string - Where do you want the to export files *relative to the units.txt file*.

#### Usage: 

``` !Export Units Units | RealWrappers ./Wrappers | All ./Everything ```

This will export:
* Only units to ./Units
* Only wrappers to ./Wrappers
* Units and wrappers to ./Everything

---