/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import FermatQuinticJacobian

/-!
# AxiomAudit

Machine-checked Lean 4 module.
-/

#print axioms Hodge.FermatQuintic.partial_eq
#print axioms Hodge.FermatQuintic.partial_off
#print axioms Hodge.FermatQuintic.partial_on
