# Fermat quintic Jacobian

Copyright (c) 2026 Benjamin Stanley Frohman (`@BenFrohman`).
Released under the Apache License, Version 2.0. See `LICENSE` and `NOTICE`.

## What this is

A Lean 4 certificate, checked against Mathlib `v4.22.0`, that the Fermat quintic

```text
G = X0^5 + X1^5 + X2^5 + X3^5 + X4^5 + X5^5
```

has partial derivatives

```text
pderiv i G = 5 * X i ^ 4
```

Those forms vanish together only at the origin of affine 6-space. By the Jacobian
criterion, `V(G)` in `P^5` is smooth.

The theorem in the repository is `Hodge.FermatQuintic.partial_eq`.

## What this is not

This is not a proof of the Hodge conjecture. It does not construct a cycle from a
Hodge class. It does not show that `H^{3,1}` vanishes: on this fourfold that
primitive piece is the degree-4 part of `C[X_i]/(X_i^4)`, of dimension 120.

The non-homogeneous expression
`sum x_i^5 - 5 x0 x1 x2 x3 x4 x5` is not used. The product of six variables has
degree 6, so that expression does not cut a hypersurface in `P^5`.

## Build

```text
lake update
lake build
```

Toolchain: Lean `v4.22.0`. Mathlib pin: `v4.22.0`.
