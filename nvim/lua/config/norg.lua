local neorg = require('neorg')

neorg.setup { 
    load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {}, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    my_workspace = "~/neorg"
                }
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        }
    },
    hook = function()
    local neorg_callbacks = require('neorg.callbacks')
    neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
        keybinds.map_event_to_mode('norg', {
            n = {
                { "gtd", "core.norg.qol.todo_items.todo.task_done" },
                { "gtu", "core.norg.qol.todo_items.todo.task_undone" }, 
                { "gtp", "core.norg.qol.todo_items.todo.task_undone" },
                { "<C-Space>", "core.norg.qol.todo_items.todo.task_cycle" }
            },

        }, { silent = true, noremap = true })
    end)

  end
}





