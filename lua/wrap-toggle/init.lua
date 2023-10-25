local function setup(config)
  -- Set default values if not provided in the config
  config = config or {}
  local key_bind = config.key_bind or "<A-z>"

  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }

  -- Use the key binding from the config or the default
  map("n", key_bind, ":lua Toggle_wrap()<CR>", opts)
end

function Enable_wrap()
  vim.opt.wrap = true
  vim.opt.linebreak = true
  print "Wrap enabled"
end

function Disable_wrap()
  vim.opt.wrap = false
  vim.opt.linebreak = false
  print "Wrap disabled"
end

function Toggle_wrap()
  if vim.opt.wrap:get() then
    Disable_wrap()
  else
    Enable_wrap()
  end
end

return {
  setup = setup,
}
