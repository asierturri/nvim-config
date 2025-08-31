require("config.lazy")
require("config.settings")
require("config.lsp")
require("config.maps")

local paths_to_check = {'/', '/../'}
local is_godot_project = false
local godot_project_path = ''
local cwd = vim.fn.getcwd()

