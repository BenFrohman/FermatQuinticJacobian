# Fermat quintic Jacobian

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23652994.svg)](https://doi.org/10.5281/zenodo.23652994) [![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

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

---
## Archival DOI & Cryptographic Provenance

- **Dedicated 1-to-1 Zenodo DOI:** [10.5281/zenodo.23652994](https://doi.org/10.5281/zenodo.23652994)
- **Author:** Benjamin Stanley Frohman (ORCID: [0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))
- **License:** Apache License, Version 2.0 (`Copyright (c) 2026 Benjamin Stanley Frohman`)
- **Earliest Commit Provenance:** `777a2e97451ec4a366c03bbacb4333c001bb833d` (2026-10-03 12:49:57 PM CDT (UTC-5))
- **SealGuard SHA-256 Merkle Root:** `83ad2500ea23e6808c156f3f05369ca099a02d763a989dfbccd6235be07cab84` (`PROVENANCE_MERKLE_ROOT.json`)
- **Titan Audit Certificate:** `audit/TITAN_AUDIT_CERTIFICATE.json` (Ed25519 key `b428fb72676f1c52`)
- **Scope & Scientific Boundary:** Certifies Jacobian smoothness of the Fermat quintic host variety in Lean 4. Explicitly states that Jacobian smoothness is a prerequisite geometric property and not a resolution of the Hodge Conjecture.
