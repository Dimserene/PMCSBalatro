SMODS.Sound({
    key = 'music_64battle',
    path = '64battle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 1 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_ttydbattle',
    path = 'ttydbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 2 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_spmbattle',
    path = 'spmbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 3 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_ssbattle',
    path = 'ssbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 4 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_csbattle',
    path = 'colorsplashbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 5 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_okbattle',
    path = 'okbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 6 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'music_ttydrbattle',
    path = 'ttydrbattle.ogg',
    pitch = 1,
    volume = 0.2,
    sync = {
        ['pm_music_64battle'] = true,
        ['pm_music_ttydbattle'] = true,
        ['pm_music_spmbattle'] = true,
        ['pm_music_ssbattle'] = true,
        ['pm_music_csbattle'] = true,
        ['pm_music_okbattle'] = true,
        ['pm_music_ttydrbattle'] = true,
    },
    select_music_track = function()
        return pm_config and pm_config.battle_track == 7 and G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.GAME.blind:get_type() ~= 'Boss'
    end
})

SMODS.Sound({
    key = 'ttydwin',
    path = 'ttydbattlewin.ogg',
    pitch = 1,
    volume = 0.2,
})