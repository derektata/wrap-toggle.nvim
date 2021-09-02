-- TODO: Rewrite the function to check current wrap status using ':set wrap ?',
-- and implement logic based on the current setting.
-- NOTES: Will do this at a later time. This hacky solution seems to work for the moment.


local o = vim.opt
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

local function setup()
-- Keybind
map('n', '<A-z>', ':lua Toggle_wrap()<CR>', opts)
end

-- Keep track of how many times we've pressed the key
local count = 0
local max_count = 1

function Enable_wrap()
  count = count + 1
  if count > max_count then
    count = max_count
  end
  o.wrap = true
  print("Wrap enabled")
end

function Disable_wrap()
  count = count - 1
  if count < 0 then
    count = 0
  end
  o.wrap = false
  print("Wrap disabled")
end

function Toggle_wrap()
    -- When the count is 0, we're in the default mode
    if count == 0 then
        Enable_wrap()
    else
        Disable_wrap()
    end
end

return {
  setup = setup,
}
