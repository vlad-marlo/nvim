local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}
local function nkeymap(key, func)
    keymap('n', key, func, opts)
end

-- navigating
keymap('i', 'jj', '<esc>', {noremap = true})
keymap('n', '<c-j>', '<c-w>j', {noremap = true, silent = true})
keymap('n', '<c-k>', '<c-w>k', {noremap = true, silent = true})
keymap('n', '<c-l>', '<c-w>l', {noremap = true, silent = true})
keymap('n', '<c-h>', '<c-w>h', {noremap = true, silent = true})
keymap('', '<m-1>', ':NvimTreeToggle<cr>', {noremap = true, silent = true})
keymap('n', 'to', ':tabonly<cr>', opts)
nkeymap('tt', ':tabnew<cr>')
nkeymap('tn', ':tabnext<cr>')
nkeymap('tp', ':tabprev<cr>')
nkeymap('<f-8>', ':TagbarToggle<cr>')


-- floatterm
nkeymap('<F8>', ':FloatermToggle<cr>')

-- telescope
keymap('n', '<leader>ff', ':Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<cr>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<cr>', opts)

-- lsp
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
