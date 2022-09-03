local Remap = require("keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<D-s>", ":w<CR>")
nnoremap("<D-w>", ":bd<CR>")

inoremap("kj", "<Esc>")
inoremap("jk", "<Esc>")

-- not yank on X
nnoremap("x", '"_x')
