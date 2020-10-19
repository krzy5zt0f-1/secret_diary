Object Oriented Code 1, Encapsulation & Cohesion
================================================


## Learn to

* Encapsulate program behaviour into cohesive classes.

## Introduction

We break our programs up into multiple objects to control complexity. So how do we decide which methods and variables should live in which objects?

As programmers we strive for "low coupling and high cohesion". Today we're going to talk about cohesion. Do some research on the phrase if you wish to know about coupling.

### Cohesion

Each class should have one purpose or job, sometimes referred to as its responsibility.

A class has high cohesion when everything inside of it relates to that purpose, without anything extraneous. Perfection is achieved when there is nothing left to take away.





## Exercise 4

**Test-drive** the secret diary example:

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
```

**First** organise it into one class only.

**Then**, when all your tests are green, reorganise it into classes with high cohesion.

This will also involve reorganising your tests!
