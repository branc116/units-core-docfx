# Infer

Infer command is used to create connections between defined units and create new units that are made by executing
some operation on one or two other units.

Sub commands:
* Slow
* Fast

---

## Slow

Usage:

```!Infer Slow```

Infers slow and stedy. This algorithm used to infer new units and connections between them is of time complexity (Mᴺ).
Where M is something and N is something else.

---

## Fast

#### Usage:

```!Infer Fast```

Infers fast and lazy. This algorithm only take in to account **operators *\****, **operator */*** and units that are defined by **the user**,
not the units that were infered in earlier stages.

---