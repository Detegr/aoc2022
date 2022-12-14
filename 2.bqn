i←⍉("AX"-˜1‿0‿1⊸/)˘>•FLines"2.in"

# star 1
g←1⊏i
wl←3|1+-˜˝i
s←3×wl
+´s+1+g

# star 2
wl↩1⊏i
s↩3×wl
o←⊏i
g↩3|o+1-˜wl
+´s+1+g

# golfed
+´(3×3|1+-˜˝i)+1+1⊏i # star 1
+´(3×1⊏i)+1+3|(⊏i)+1-˜1⊏i # star 2
