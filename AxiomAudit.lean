-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import FermatQuinticJacobian

#print axioms Hodge.FermatQuintic.partial_eq
#print axioms Hodge.FermatQuintic.partial_off
#print axioms Hodge.FermatQuintic.partial_on
