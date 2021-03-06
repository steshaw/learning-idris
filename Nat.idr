--
-- Needs `idris --noprelude`
--

module Nat

data Nat
  = Z
  | S Nat

infixl 8 +
infixl 9 *

(+) : Nat -> Nat -> Nat
Z     + y = y
(S k) + y = S (k + y)

(*) : Nat -> Nat -> Nat
Z     * y = Z
(S k) * y = y + k * y


