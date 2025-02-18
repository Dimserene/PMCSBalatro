-- Config UI
local no_restart_toggles = {{ref_value = "papermario_only", label = "pm_settings_papermario_only"}, {ref_value = "things_added", label = "pm_settings_things_added"}}

local create_menu_toggles = function (parent, toggles)
    for k, v in ipairs(toggles) do
      parent.nodes[#parent.nodes + 1] = create_toggle({
            label = localize(v.label),
            ref_table = pm_config,
            ref_value = v.ref_value,
            callback = function(_set_toggle)
              NFS.write(mod_dir.."/config.lua", STR_PACK(pm_config))
            end,
      })
    end
  end

pmconfig = function()
    local no_restart_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
    create_menu_toggles(no_restart_settings, no_restart_toggles)
    
    local config_nodes =   
  {
    {
      n = G.UIT.R,
      config = {
        padding = 0,
        align = "cm"
      },
      nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("pm_settings_header_norequired"),
            shadow = true,
            scale = 0.75 * 0.8,
            colour = HEX("FFFFFF")
          }
        }
      },
    },
    no_restart_settings,
  }
  return config_nodes
end

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = {
        align = "cm",
        padding = 0.05,
        colour = G.C.CLEAR,
        },
        nodes = pmconfig()
    }
end