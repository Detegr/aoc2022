input ← •FLines"7.in"
W ← ((⊢-˜+`×¬)' '=⊢)⊸⊔
St ← ⊣≡≠⊸↑ # 𝕩 starts with 𝕨
Cd ← {
  d𝕊"..": {0=≠𝕩 ? "/" ; 𝕩} {𝕩/˜¬∨`(≠𝕩)↑/⁼⋈¯1⊑/'/'=𝕩} d;
  d𝕊"/": "/"; ⋄ "/"𝕊tgt: "/"∾tgt; # these cases are not needed, but make the output prettier
  d𝕊tgt: ∾d‿"/"‿tgt
}

# walk through the file system, parse file sizes. directories are marked with size 0
dir ← ""
fs ← ((2×"$ ls"⊸St)+"$ cd "⊸St)◶({sz‿f: (•BQN⎊0 sz)‿dir‿f}W)‿{dir ↩ (dir Cd ¯1⊑W𝕩)}‿⟨⟨⟩⟩ ¨input
fs ↩ fs⊔˜(⊢×·+`1=-⟜») 2≤≡¨fs
dirs ← ⍷⊑fs
contents ← ∘‿3⊸⥊¨∾¨1↓¨1↓fs

DirSize ← {
  { 𝕊0‿d‿f: +´DirSize ⊑contents⊏˜dirs⊐⋈d Cd f; # for directories, get the size recursively
    𝕊sz‿·‿·: sz
  }˘𝕩
}

# star 1
+´≤⟜100000⊸/sz←+´∘DirSize¨contents

# star 2
⊑∧((30000000-70000000-⊑sz)⊸<⊸/) sz
