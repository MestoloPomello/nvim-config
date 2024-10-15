Clone location:
- Linux: `~\.config\nvim`
- Windows: `~\AppData\Local\nvim`

---

Note: `<leader>` is currently `<Space>`.

---

Utils:
- `gc`: comment selection
- `gt`: go to next tab
- `gT`: go to previous tab
- `gd`: go to definition
- `gf`: go to file

---

Search/Replace with smartcase on:
- `/string`: case insensitive search
- `/String`: case sensitive search
- `/string\C`: case sensitive search
- `/String\c`: case insensitive search
- `:%s/x/y`: replace __x__ with __y__
- `:%s/x/y/g`: globally replace

---

Alternative block comment (with block selection):
1. `<C-V>` to select the block (or `<C-Q>` on Windows)
2. `<I>` to insert before each line
3. `Esc` to apply

---

Custom commands:
- `<leader>rs`: **r**ename **s**ymbol
- `<leader>fm`: **f**or**m**at buffer 
- `<leader>e`: show full **e**rror

---

Surround (copied from the [repo](https://github.com/kylechui/nvim-surround)):
The three "core" operations of `add`/`delete`/`change` can be done with the
keymaps `ys{motion}{char}`, `ds{char}`, and `cs{target}{replacement}`,
respectively. For the following examples, `*` will denote the cursor position:

```help
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
```
