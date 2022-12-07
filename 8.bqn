in ← >1+-⟜'0'⚇0•FLines"8.in"
rot ← ⊢‿(⌽˘)‿(⍉)‿(⍉⌽)
M ← {t←𝕨 ⋄ ∧`˘×{𝕩×𝕨<t}`˘𝕩}
vis ← +´⚇2{t←𝕩 ⋄ {t⊸M⌾𝕏 in}¨rot}¨1+↕10

# star 1
+´+˝×{𝕨‿𝕩⊑(1-˜𝕨‿𝕩⊑in)⊑vis}⌜˜↕≠in

Scenic ← {𝕨𝕊𝕩:
  t ← 𝕨⊑𝕩
  yc‿xc ← 𝕨
  y‿x ← (xc⊏⍉𝕩)⋈yc⊏𝕩
  M ← ∧`∘>⟜0{𝕩×𝕨<t}`
  V ← {+´M ¯∞«⍟(𝕨+1) 𝕩}
  H ← {+´M⌽¯∞»⍟((≠𝕩)-𝕨) 𝕩}
  u ← yc H y ⋄ d ← yc V y
  l ← xc H x ⋄ r ← xc V x
  ×´u‿d‿l‿r
}

# star 2
⌈´⌈˝Scenic⟜in¨∾⌜˜↕≠in
