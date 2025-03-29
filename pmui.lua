-- Config UI
local no_restart_toggles = {{ref_value = "papermario_only", label = "pm_settings_papermario_only"}, {ref_value = "things_added", label = "pm_settings_things_added"}, {ref_value = "bc_added", label = "pm_settings_bc_added"},}
local no_restart_option_cycles = {
  {ref_value = "bc_rarity", label = "pm_settings_bc_rarity", options = {1, 2, 3, 4, 5}}, -- don't yell at me for doing it this way
  {ref_value = "things_rarity", label = "pm_settings_things_rarity", options = {1, 2, 3, 4, 5}},
  {ref_value = "drained_rarity", label = "pm_settings_drained_rarity", options = {0, 1, 2, 3, 4, 5}},
}
local music_option_cycles = {
  {ref_value = "battle_track", label = "pm_settings_battle_track", options = {"64", "TTYD", "Super", "Sticker Star", "Color Splash", "Origami King", "TTYD Remake", "None"}},
}

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

local create_option_cycles = function (parent, cycles)
    for k, v in ipairs(cycles) do
      parent.nodes[#parent.nodes + 1] = create_option_cycle({
            label = localize(v.label),
            options = v.options,
            ref_table = pm_config,
            ref_value = v.ref_value,
            opt_callback = 'cycle_update',
            current_option = pm_config[v.ref_value],
      })
    end
end


pmconfig = function()
    local no_restart_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
    local music_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}

    create_menu_toggles(no_restart_settings, no_restart_toggles)
    create_option_cycles(no_restart_settings, no_restart_option_cycles)
    create_option_cycles(music_settings, music_option_cycles)
    
    local config_nodes =   
  {
    {
      n = G.UIT.R,
      config = {
        padding = 0,
        align = "cl"
      },
      nodes = {
        { n = G.UIT.R, config = { padding = 0, align = "cl" },
          nodes = {
            {
              n = G.UIT.T,
              config = {
                text = localize("pm_settings_header_norequired"),
                shadow = true,
                scale = 0.75 * 0.8,
                colour = HEX("FFFFFF")
              }
            },
            no_restart_settings,
          },
        },
        {
          n = G.UIT.R, config = { padding = 0, align = "cr" },
          nodes = {
            {
              n = G.UIT.T,
              config = {
                text = localize("pm_settings_header_music"),
                shadow = true,
                scale = 0.75 * 0.8,
                colour = HEX("FFFFFF")
              },
            },
            music_settings,
          },
        }
      },
      
    }, 
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