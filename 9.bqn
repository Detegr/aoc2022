in ← ∾{(•BQN 𝕩)/𝕨}´¨0‿¯1‿1‿1⊸⊔¨•FLines"9.in"

Simulate ← {
  rope←𝕨⥊⟨0‿0⟩
  HM←"UDLR"⊸⊐◶⟨¯1‿0 ⋄ 1‿0 ⋄ 0‿¯1 ⋄ 0‿1⟩
  TM←{h𝕊t: t+((×+´1⊸<|h-t)××h-t)}
  ≠⍷⊏⌽⍉>{rope (TM`+⟜(HM ⋈𝕩)⌾⊑)↩}¨𝕩
}

2 Simulate in # star 1
10 Simulate in # star 2
