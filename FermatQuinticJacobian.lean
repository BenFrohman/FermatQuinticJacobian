/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
import Mathlib.Algebra.MvPolynomial.PDeriv

/-!
# Fermat quintic fourfold — Jacobian certificate

The polynomial previously written as
`x0^5 + … + x5^5 - 5 x0 x1 x2 x3 x4 x5`
is not homogeneous. The product of six variables has degree 6; each fifth power
has degree 5. It does not cut a hypersurface in `P^5`.

The Fermat quintic does:
`G = ∑_{i < 6} X_i ^ 5`.
Each partial is `5 X_i ^ 4`. Those forms vanish simultaneously only at the
origin of affine 6-space, so `V(G) ⊂ P^5` is smooth by the Jacobian criterion.

This file proves the partials. It does not produce a cycle, and it does not
inhabit the Hodge conjecture. `H^{3,1}` of this fourfold is `R_4`, dimension 120,
not 0.
-/

open MvPolynomial

namespace Hodge
namespace FermatQuintic

/-- Fermat quintic in six variables. Homogeneous of degree 5. -/
noncomputable def G : MvPolynomial (Fin 6) ℤ :=
  ∑ i : Fin 6, X i ^ 5

theorem partial_off (i j : Fin 6) (h : j ≠ i) :
    pderiv i (X j ^ 5 : MvPolynomial (Fin 6) ℤ) = 0 := by
  rw [pderiv_pow, pderiv_X_of_ne h, mul_zero]

theorem partial_on (i : Fin 6) :
    pderiv i (X i ^ 5 : MvPolynomial (Fin 6) ℤ) = 5 * X i ^ 4 := by
  rw [pderiv_pow, pderiv_X_self, mul_one]
  simp

/-- Each partial of `G` is `5 X_i ^ 4`. -/
theorem partial_eq (i : Fin 6) :
    pderiv i G = 5 * X i ^ 4 := by
  classical
  unfold G
  rw [map_sum]
  have hsum :
      (∑ j : Fin 6, pderiv i (X j ^ 5 : MvPolynomial (Fin 6) ℤ)) =
        pderiv i (X i ^ 5 : MvPolynomial (Fin 6) ℤ) := by
    apply Finset.sum_eq_single i
    · intro j _ hji
      exact partial_off i j hji
    · intro hi
      exact (hi (Finset.mem_univ i)).elim
  rw [hsum, partial_on i]

end FermatQuintic
end Hodge
