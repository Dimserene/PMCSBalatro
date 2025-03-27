-- Config UI
local no_restart_toggles = {{ref_value = "papermario_only", label = "pm_settings_papermario_only"}, {ref_value = "custom_splash", label = "pm_settings_custom_splash"},}
local no_restart_option_cycles = {
  {ref_value = "bc_rarity", label = "pm_settings_bc_rarity", options = {"Never", "Rarely", "Sometimes", "Moderately", "Often", "Common"}}, -- don't yell at me for doing it this way
  {ref_value = "things_rarity", label = "pm_settings_things_rarity", options = {"Never", "Rarely", "Sometimes", "Moderately", "Often", "Common"}},
  {ref_value = "drained_rarity", label = "pm_settings_drained_rarity", options = {"Never", "Rarely", "Sometimes", "Moderately", "Often", "Common"}},
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
    local no_restart_settings = {n = G.UIT.C, config = {align = "cm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
    create_menu_toggles(no_restart_settings, no_restart_toggles)
    create_option_cycles(no_restart_settings, no_restart_option_cycles)

    local config_nodes =   
  {
    {
      n = G.UIT.R,
      config = {
        padding = 0,
        align = "cl"
      },
      nodes = {
        { n = G.UIT.C, config = { padding = 0, align = "cm" },
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
      },
    }, 
  }
  return config_nodes
end

pmmusic = function()
  local music_settings = {n = G.UIT.C, config = {align = "cm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
  create_option_cycles(music_settings, music_option_cycles)
  
  local music_nodes = {
    {
      n = G.UIT.R,
      config = {
        padding = 0,
        align = "cl"
      },
      nodes = {
        {
          n = G.UIT.C, config = { padding = 0, align = "cm" },
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
        },
      },
    }, 
  }
  return music_nodes
end

pmcredits = function()
  local credit_nodes = {
    {
      n = G.UIT.R, config = { padding = 0.15, align = "cm" },
      nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("pm_credits_thanks"),
            shadow = true,
            scale = 0.75 * 0.8,
            colour = HEX("FFFFFF")
          },
          
        },
      }
    },
    {
      n = G.UIT.R, config = { padding = 0.15, align = "cm" },
      nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("pm_credits_lead"),
            shadow = true,
            scale = 0.75 * 0.7,
            colour = HEX("FFFFFF")
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "TheSocialZombie",
            shadow = true,
            scale = 0.75 * 0.7,
            colour = HEX("067d3c")
          },
        },
      }
    },
    {
      n = G.UIT.R, config = { padding = 0.15, align = "cm" },
      nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("pm_credits_mod"),
            shadow = true,
            scale = 0.75 * 0.7,
            colour = HEX("FFFFFF")
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "Cryptid",
            shadow = true,
            scale = 0.75 * 0.5,
            colour = G.C.DARK_EDITION
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "Pokermon",
            shadow = true,
            scale = 0.75 * 0.5,
            colour = HEX("db1d0f")
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "Extra Credit",
            shadow = true,
            scale = 0.75 * 0.5,
            colour = G.C.GOLD
          },
        },
      }
    },
    {
      n = G.UIT.R, config = { padding = 0.15, align = "cm" },
      nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("pm_credits_game"),
            shadow = true,
            scale = 0.75 * 0.7,
            colour = HEX("FFFFFF")
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "Nintendo and Paper Mario",
            shadow = true,
            scale = 0.75 * 0.5,
            colour = G.C.RED
          },
        },
        {
          n = G.UIT.T,
          config = {
            text = "The Balatro Discord",
            shadow = true,
            scale = 0.75 * 0.5,
            colour = SMODS.Gradients.pm_rgbled
          },
        },
      }
    },
  }

  return credit_nodes
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

SMODS.current_mod.extra_tabs = function()
  return {
    {
      label = localize("pm_music_box"),
      tab_definition_function = function()
        return {
          n = G.UIT.ROOT,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = pmmusic()
        }
      end
    },
    {
      label = localize("pm_credits_fullcredits"),
      tab_definition_function = function()
        return {
          n = G.UIT.ROOT,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = pmcredits()
        }
      end
    }
  }
end