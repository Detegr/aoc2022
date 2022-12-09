in ← ∾{(•BQN 𝕩)/𝕨}´¨0‿¯1‿1‿1⊸⊔¨•FLines"9.in"

Simulate ← {
  knots←𝕨 ⋄ rope←knots⥊⟨0‿0⟩ ⋄ idx←⌽<˘2↕↕knots
  HM←{"UDLR"⊸⊐◶⟨¯1‿0 ⋄ 1‿0 ⋄ 0‿¯1 ⋄ 0‿1⟩ 𝕩}
  TM←{𝕊t‿h: ⋈t+((×+´1⊸<|h-t)××h-t)}
  Step←{t‿h𝕊d: t‿(h+HM⋈d)}
  Nudge←{𝕊t‿h: ⟨¯1⊑TM t‿h, h⟩}

  ≠⍷⊏⍉rope∾>{d←𝕩 ⋄ {rope Step⟜d⌾(𝕩⊸⊏)↩}⊑idx ⋄ ⊑{rope Nudge⌾(𝕩⊸⊏)↩}¨idx }¨𝕩
}

2 Simulate in # star 1
10 Simulate in # star 2
