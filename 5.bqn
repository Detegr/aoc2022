⟨S⟩←•Import"u.bqn"

# process input
st‿i←(⊢⊔˜·S 0=≠¨)•FLines"5.in"
i(-⟜1⌾(1‿2⊸⊏)⚇1·•BQN¨1‿3‿5⊏ ⊢⊔˜·S' '⊸=)¨↩
m ← (/' '≠¯1⊸⊏∘>) st
st(' '⊸≠⊸/¨·<˘·⍉∘>¯1↓m⊸⊏¨)↩
s1 ← st ⋄ s2 ← st

# star 1
⊑¨¯1⊑{c‿f‿t: s1 (⌽c↑f⊑s1)⊸∾⌾(t⊸⊑)⟜(c⊸↓⌾(f⊸⊑))↩ }¨i

# star 2
⊑¨¯1⊑{c‿f‿t: s2 (c↑f⊑s2)⊸∾⌾(t⊸⊑)⟜(c⊸↓⌾(f⊸⊑))↩ }¨i
