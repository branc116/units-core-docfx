
# Operator

This command is used to define how the operator will behave. What operators infer other operators.


## Example

```Operator(*) := a = b * c | a = c * b | c = a / b | b = a / c```

This command infers the following:
 * Commutative law: a * b <=> b * a
 * Inverse of **\*** is **/**

Definitions for operators seem trivial and the pupuse of defining them outside of the code is unclear.
Maybe purpuse will become clear in time.

For now to get expected behaviar one has to add two line of code to units.txt:

```
Operator(\*) := a = b \* c | a = c \* b | c = a / b | b = a / c
Operator(/) := a = b / c | c = b / a | b = a \* c | b = c \* a
```

---