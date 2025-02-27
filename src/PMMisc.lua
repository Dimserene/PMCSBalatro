--- STEAMODDED HEADER
--- MOD_NAME: Paper Mario in Balatro
--- MOD_ID: PMCS
--- MOD_AUTHOR: [TheSocialZombie]
--- MOD_DESCRIPTION: A mod that adds Paper Mario themed Jokers into Balatro!
--- VERSION: 1.0.0
--- PREFIX: pm
----------------------------------------------
----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------


----------------------------------------------
--  BOOSTER PACKS ----------------------------
----------------------------------------------

-- Basics
SMODS.Booster {
    key = 'bc_basic_1',
    atlas = 'pm_PMBooster',
    pos = {x = 0, y = 0},
    config = { extra = 3, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 3,
    weight = 10,
    --weight = 1.5,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

SMODS.Booster {
    key = 'bc_basic_2',
    atlas = 'pm_PMBooster',
    pos = {x = 1, y = 0},
    config = { extra = 3, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 3,
    weight = 20,
    --weight = 1.5,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

-- Big
SMODS.Booster {
    key = 'bc_big_1',
    atlas = 'pm_PMBooster',
    pos = {x = 2, y = 0},
    config = { extra = 5, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 4,
    weight = 10,
    --weight = 0.75,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

-- Big 2
SMODS.Booster {
    key = 'bc_big_2',
    atlas = 'pm_PMBooster',
    pos = {x = 3, y = 0},
    config = { extra = 5, choose = 1 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 4,
    weight = 10,
    --weight = 0.75,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

-- Huge
SMODS.Booster {
    key = 'bc_huge_1',
    atlas = 'pm_PMBooster',
    pos = {x = 4, y = 0},
    config = { extra = 5, choose = 2 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 6,
    weight = 10,
    --weight = 0.5,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

-- Huge 2
SMODS.Booster {
    key = 'bc_huge_2',
    atlas = 'pm_PMBooster',
    pos = {x = 5, y = 0},
    config = { extra = 5, choose = 2 }, -- have 3 cards, choose 1
    group_key = 'pm_battle_card_booster',
    cost = 6,
    weight = 10,
    --weight = 0.5,
    draw_hand = false,
    kind = 'pm_BattleCard',
    select_card = 'consumeables', -- save the cards instead of using them
    loc_vars = function(self, info_queue, card)
        return { vars = { card and card.ability.choose or self.config.choose, card and card.ability.extra or self.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("pm_BattleCard", G.pack_cards, nil, nil, true, true, nil)
    end,
    ease_background_colour = function(self)
		ease_colour(G.C.DYN_UI.MAIN, G.C.RED)
		ease_background_colour({ new_colour = G.C.RED, special_colour = G.C.BLACK, contrast = 2 })
	end,
}

----------------------------------------------
--  CONSUMABLES  -----------------------------
----------------------------------------------

-- One-Up Mushroom
SMODS.Consumable{
    key = 'one_up',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 8, y = 0 },
    config = {extra = {hands = 5}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return false
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_saved_ex")})
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
            ))
        end
    end,
}

-- Mushroom
SMODS.Consumable{
    key = 'mushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 5, y = 0 },
    config = {extra = {hands = 1}},
    cost = 2,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Big Mushroom
SMODS.Consumable{
    key = 'bigmushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 6, y = 0 },
    config = {extra = {hands = 2}},
    cost = 4,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Mega Mushroom
SMODS.Consumable{
    key = 'megamushroom',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 7, y = 0 },
    config = {extra = {hands = 3}},
    cost = 6,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
        ))
    end
}

-- Fire Flower
SMODS.Consumable{
    key = 'fireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 0, y = 0 },
    config = {extra = {discards = 1}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_discard(card.ability.extra.discards)
                    return true 
                end
            }))
    end
}

-- Big Fire Flower
SMODS.Consumable{
    key = 'bigfireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 1, y = 0 },
    config = {extra = {discards = 2}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event(
            {
                trigger = 'after',
                delay = 0.1,
                func = function() 
                    ease_discard(card.ability.extra.discards)
                    return true 
                end
            }))
    end
}

-- Ice Flower
SMODS.Consumable{
    key = 'iceflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 2, y = 0 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_pm_frozen
		return { vars = { card and card.ability.extra.selection_limit or self.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]

                _card:set_ability(G.P_CENTERS.m_pm_frozen, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- Big Ice Flower
SMODS.Consumable{
    key = 'bigiceflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 3, y = 0 },
    config = {extra = {selection_limit = 4}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_pm_frozen
		return { vars = { card and card.ability.extra.selection_limit or self.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                _card:set_ability(G.P_CENTERS.m_pm_frozen, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- POW Block
SMODS.Consumable{
    key = 'powblock',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 4, y = 0 },
    config = {extra = {selection_limit = 5, money = 2}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.selection_limit, card.ability.extra.money } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                if _card.config.center == G.P_CENTERS.c_base then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                        play_sound('tarot1')
                        card:juice_up(0.3, 0.5)
                        return true end }))
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.2,
                        func = function() 
                            if _card.ability.name == 'Glass Card' then 
                                _card:shatter()
                            else
                                _card:start_dissolve(nil, i == #G.hand.highlighted)
                            end
                        return true end }))
                end
                _card:set_ability(G.P_CENTERS.c_base, nil, true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        _card:juice_up()
                        return true
                    end
                }))
            end
        end
    end,
}

-- Tail
SMODS.Consumable{
    key = 'tail',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 9, y = 0 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1]:get_id()
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end
            local right = G.hand.highlighted[2]:get_id()
            if right < 11 then right = tostring(right)
            elseif right == 11 then right = 'Jack'
            elseif right == 12 then right = 'Queen'
            elseif right == 13 then right = 'King'
            elseif right == 14 then right = 'Ace'
            end
            
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
            assert(SMODS.change_base(G.hand.highlighted[2], nil, left))
            assert(SMODS.change_base(G.hand.highlighted[1], nil, right))
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
        end
    end,
}

-- Spike Hat
SMODS.Consumable{
    key = 'spikehat',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 0, y = 1 },
    config = {extra = {}},
    cost = 7,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = { } }
    end,
    can_use = function(self, card)
        if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
            G.GAME.blind:disable()
            play_sound('timpani')
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
        end
    end,
}

-- Frog Suit
SMODS.Consumable{
    key = 'frogsuit',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 1, y = 1 },
    config = {extra = {selection_limit = 2}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1].base.suit
            local right = G.hand.highlighted[2].base.suit        
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
            assert(SMODS.change_base(G.hand.highlighted[2], left, nil))
            assert(SMODS.change_base(G.hand.highlighted[1], right, nil))
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[1]:flip()
                    G.hand.highlighted[2]:flip()
                    return true
                end
            }))
        end
    end,
}

-- Worn-Out Jump
SMODS.Consumable{
    key = 'wojump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 2, y = 1 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1}},
    cost = 1,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            if pseudorandom('wornout') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.hand.highlighted[1]:flip()
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                -- yes this is just Strength code
                local rank_suffix = G.hand.highlighted[1].base.id == 14 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
                if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 11 then rank_suffix = 'Jack'
                elseif rank_suffix == 12 then rank_suffix = 'Queen'
                elseif rank_suffix == 13 then rank_suffix = 'King'
                elseif rank_suffix == 14 then rank_suffix = 'Ace'
                end
                assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
                delay(0.6)
                G.hand.highlighted[1]:flip()
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Jump
SMODS.Consumable{
    key = 'jump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 5, y = 1 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, extra_use = false, uses = 0}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('jump') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            G.hand.highlighted[1]:flip()
            
            -- yes this is just Strength code
            local rank_suffix = G.hand.highlighted[1].base.id == 14 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end

            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Big Jump
SMODS.Consumable{
    key = 'bigjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 8, y = 1 },
    config = {extra = {odds = 2, selection_limit = 1, increase = 2, extra_use = false, uses = 0}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('jump') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code
            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id >= 13 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
            
            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Huge Jump
SMODS.Consumable{
    key = 'hugejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 0, y = 2 },
    config = {extra = {selection_limit = 1, increase = 3}},
    cost = 7,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code

            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id >= 12 and 2 or math.min(G.hand.highlighted[1].base.id+card.ability.extra.increase, 14)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            G.hand.highlighted[1]:flip()
        end
    end
}

-- Line Jump
SMODS.Consumable{
    key = 'linejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 1, y = 2 },
    config = {extra = {selection_limit = 3}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 2) -- makes sure we can't go below 2

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max ~= 2 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is 2
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Big Line Jump
SMODS.Consumable{
    key = 'biglinejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 2, y = 2 },
    config = {extra = {selection_limit = 4}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 3) -- makes sure we can't go below 2

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max > 3 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is <= 3
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Huge Line Jump
SMODS.Consumable{
    key = 'hugelinejump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 3, y = 2 },
    config = {extra = {selection_limit = 5}},
    cost = 8,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- make the three cards into a mini-straight, based off of the biggest card (will always prioritize making a descending one)
            local max = math.max(G.hand.highlighted[1]:get_id(), G.hand.highlighted[2]:get_id(), G.hand.highlighted[3]:get_id(), G.hand.highlighted[3]:get_id())
            local next_in_line = math.max(max - 1, 4) -- makes sure we can't go below 4

            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))

            if max > 4 then
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.max(next_in_line - 1, 2) -- makes sure we can't go below 2
                    end
                end
            else -- make an increasing straight instead, since the max is 4
                next_in_line = math.min(max + 1, 14)
                for i=1, #G.hand.highlighted do
                    if G.hand.highlighted[i]:get_id() ~= max then
                        local rank_suffix = next_in_line
                        if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                        elseif rank_suffix == 11 then rank_suffix = 'Jack'
                        elseif rank_suffix == 12 then rank_suffix = 'Queen'
                        elseif rank_suffix == 13 then rank_suffix = 'King'
                        elseif rank_suffix == 14 then rank_suffix = 'Ace'
                        end
                        assert(SMODS.change_base(G.hand.highlighted[i], nil, rank_suffix))
                        next_in_line = math.min(next_in_line + 1, 14) -- makes sure we can't go above 14
                    end
                end
            end

            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end
}

-- Hopslippers (TBA)

-- Iron Jump
SMODS.Consumable{
    key = 'ironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 9, y = 2 },
    config = {extra = {selection_limit = 3}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1].base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Big Iron Jump
SMODS.Consumable{
    key = 'bigironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 2, y = 3 },
    config = {extra = {selection_limit = 5}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1].base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Huge Iron Jump
SMODS.Consumable{
    key = 'hugeironjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 3, y = 3 },
    config = {extra = {}},
    cost = 7,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {} }
    end,
    can_use = function(self, card)
        if G.hand.cards and G.hand.cards[1] then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.cards and G.hand.cards[1] then
            local left = G.hand.cards[1].base.suit     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.cards do
                assert(SMODS.change_base(G.hand.cards[i], left, nil))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Spin Jump
SMODS.Consumable{
    key = 'spinjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 4, y = 3 },
    config = {extra = {selection_limit = 5}},
    cost = 6,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and  #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            local left = G.hand.highlighted[1]:get_id()
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end     
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.highlighted do
                assert(SMODS.change_base(G.hand.highlighted[i], nil, left))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.highlighted do
                        G.hand.highlighted[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Big Spin Jump
SMODS.Consumable{
    key = 'bigspinjump',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 5, y = 3 },
    config = {extra = {}},
    cost = 8,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {} }
    end,
    can_use = function(self, card)
        if G.hand.cards and G.hand.cards[1] then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.cards and G.hand.cards[1] then
            local left = G.hand.cards[1]:get_id()    
            if left < 11 then left = tostring(left)
            elseif left == 11 then left = 'Jack'
            elseif left == 12 then left = 'Queen'
            elseif left == 13 then left = 'King'
            elseif left == 14 then left = 'Ace'
            end
            G.E_MANAGER:add_event(Event({
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
            for i=1, #G.hand.cards do
                assert(SMODS.change_base(G.hand.cards[i], nil, left))
            end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    for i=1, #G.hand.cards do
                        G.hand.cards[i]:flip()
                    end
                    return true
                end
            }))
        end
    end,
}

-- Worn-Out Hammer
SMODS.Consumable{
    key = 'wohammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 6, y = 3 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1}},
    cost = 1,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            if pseudorandom('wornout') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                G.hand.highlighted[1]:flip()
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                -- yes this is just Strength code but reversed
                local rank_suffix = G.hand.highlighted[1].base.id == 2 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
                if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 11 then rank_suffix = 'Jack'
                elseif rank_suffix == 12 then rank_suffix = 'Queen'
                elseif rank_suffix == 13 then rank_suffix = 'King'
                elseif rank_suffix == 14 then rank_suffix = 'Ace'
                end
                assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
                delay(0.6)
                G.hand.highlighted[1]:flip()
            else
                -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
                delay(0.6)
            end
        end
    end
}

-- Hammer
SMODS.Consumable{
    key = 'hammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 9, y = 3 },
    config = {extra = {odds = 3, selection_limit = 1, increase = 1, extra_use = false, uses = 0}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('hammer') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            G.hand.highlighted[1]:flip()
            
            -- yes this is just Strength code
            local rank_suffix = G.hand.highlighted[1].base.id == 2 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end

            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Big Hammer
SMODS.Consumable{
    key = 'bighammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 2, y = 4 },
    config = {extra = {odds = 2, selection_limit = 1, increase = 2, extra_use = false, uses = 0}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.increase} }
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if initial then card.ability.extra.extra_use = pseudorandom('hammer') < (G.GAME.probabilities.normal / card.ability.extra.odds) end
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    keep_on_use = function(self, card)
        return card.ability.extra.extra_use
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code
            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id <= 3 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            
            if not card.ability.extra.extra_use and not card.ability.extra.uses then
            -- yes this is just WOF code lmao
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
            
            delay(0.6)
            G.hand.highlighted[1]:flip()
            card.ability.extra.extra_use = false
            card.ability.extra.uses = card.ability.extra.uses + 1
        end
    end
}

-- Huge Hammer
SMODS.Consumable{
    key = 'hugehammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 4, y = 4 },
    config = {extra = {selection_limit = 1, increase = 3}},
    cost = 7,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, card.ability.extra.increase} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted == card.ability.extra.selection_limit then
            -- yes this is just Strength code

            G.hand.highlighted[1]:flip()
            local rank_suffix = G.hand.highlighted[1].base.id <= 4 and 14 or math.max(G.hand.highlighted[1].base.id-card.ability.extra.increase, 2)
            if rank_suffix < 11 then rank_suffix = tostring(rank_suffix)
            elseif rank_suffix == 11 then rank_suffix = 'Jack'
            elseif rank_suffix == 12 then rank_suffix = 'Queen'
            elseif rank_suffix == 13 then rank_suffix = 'King'
            elseif rank_suffix == 14 then rank_suffix = 'Ace'
            end
            assert(SMODS.change_base(G.hand.highlighted[1], nil, rank_suffix))
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            G.hand.highlighted[1]:flip()
        end
    end
}

-- KO Hammer (TBA)
-- Eekhammer (TBA)

-- Hurlhammer
SMODS.Consumable{
    key = 'hurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 4, y = 5 },
    config = {extra = {odds = 5, selection_limit = 5}},
    cost = 4,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            if pseudorandom('hurl') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                    assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
                end
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                delay(0.6)
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                end
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
    end
}

-- Big Hurlhammer
SMODS.Consumable{
    key = 'bighurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 7, y = 5 },
    config = {extra = {odds = 2, selection_limit = 5}},
    cost = 6,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit, (G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit  then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit  then
            if pseudorandom('hurl') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                    assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
                end
                play_sound('tarot1', 1, 0.4)
                card:juice_up(0.3, 0.5)
                delay(0.6)
                for i=1, #G.hand.highlighted do
                    G.hand.highlighted[i]:flip()
                end
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
    end
}

-- Huge Hurlhammer
SMODS.Consumable{
    key = 'hugehurlhammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 8, y = 5 },
    config = {extra = {selection_limit = 5}},
    cost = 8,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = {card.ability.extra.selection_limit} }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1  and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                G.hand.highlighted[i]:flip()
                assert(SMODS.change_base(G.hand.highlighted[i], nil, 'Ace'))
            end
            play_sound('tarot1', 1, 0.4)
            card:juice_up(0.3, 0.5)
            delay(0.6)
            for i=1, #G.hand.highlighted do
                G.hand.highlighted[i]:flip()
            end
        end
    end
}

-- Blazehammer
SMODS.Consumable{
    key = 'blazehammer',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 9, y = 5 },
    config = {extra = {selection_limit = 5, money = 7}},
    cost = 5,
    discovered = true,
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.selection_limit, card.ability.extra.money } }
    end,
    can_use = function(self, card)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            return true
        end
        return false
    end,
    use = function(self, card, area, copier)
        if G.hand.highlighted and #G.hand.highlighted >= 1 and #G.hand.highlighted <= card.ability.extra.selection_limit then
            for i=1, #G.hand.highlighted do
                local _card = G.hand.highlighted[i]
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('tarot1')
                    card:juice_up(0.3, 0.5)
                    return true end }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    func = function() 
                        if _card.ability.name == 'Glass Card' then 
                            _card:shatter()
                        else
                            _card:start_dissolve(nil, i == #G.hand.highlighted)
                        end
                    return true end }))
            end
            if #G.hand.highlighted == card.ability.extra.selection_limit then 
                ease_dollars(card.ability.extra.money) 
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = '$5', colour = G.C.MONEY})
            end
        end
    end,
}

----------------------------------------------
------------MOD CODE END----------------------