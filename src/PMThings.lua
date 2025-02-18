--- STEAMODDED HEADER
--- MOD_NAME: Paper Mario in Balatro
--- MOD_ID: PMCS
--- MOD_AUTHOR: TheSocialZombie
--- MOD_DESCRIPTION: A mod that adds Paper Mario themed Jokers into Balatro!
--- VERSION: 1.0.0
--- PREFIX: PM
----------------------------------------------
----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------

-- Fire Extinguisher
SMODS.Joker{
    key = 'fire_extinguisher',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 0, y = 0 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        
        -- disables itself if it's the first joker
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            if card == G.jokers[1] then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card.debuff = true
                        return true
                    end
                }))
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED,
                    card = card
                }
            end
        end

        if context.cards_destroyed then
            for k, val in ipairs(context.glass_shattered) do
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(val, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                G.deck:emplace(_card)
                table.insert(G.playing_cards, _card)
                playing_card_joker_effects({true})
                
                G.E_MANAGER:add_event(Event({
                func = function() 
                    _card:start_materialize()
                    return true
                end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex'), colour = G.C.FILTER})
            end
        elseif context.remove_playing_cards then
            card.ability.extra.tick = false
            for k, val in ipairs(context.removed) do      
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(val, nil, nil, G.playing_card)
                card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                G.deck:emplace(_card)
                table.insert(G.playing_cards, _card)
                playing_card_joker_effects({true})
                
                G.E_MANAGER:add_event(Event({
                func = function() 
                    _card:start_materialize()
                    
                    return true
                end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex'), colour = G.C.FILTER})
            end
        end

    end
}

-- Fan 
SMODS.Joker{
    key = 'fan',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 1, y = 0 },
    config = { extra = {chips = 0, mult = 0, chip_gain = 10, mult_gain = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chip_gain, card.ability.extra.mult_gain, card.ability.extra.chips, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            for k, c in ipairs(context.scoring_hand) do
                c:rand_enhance()                 
                G.E_MANAGER:add_event(Event({
                    func = function()
                        c:juice_up()
                        return true
                    end
                }))
            end

            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end      

        if context.joker_main then
            return{
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local enhanced_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center ~= G.P_CENTERS.c_base then enhanced_tally = enhanced_tally + 1 end
            end
            card.ability.extra.chips = enhanced_tally * card.ability.extra.chip_gain
            card.ability.extra.mult = enhanced_tally
        else
            card.ability.extra.chips = 0
            card.ability.extra.mult = 0
        end
    end
}

-- Plunger
SMODS.Joker{
    key = 'plunger',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 2, y = 0 },
    config = { extra = {mult = 0, mult_gain = 15, suits = ""} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_splash
        return { vars = {card.ability.extra.mult_gain, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and next(context.poker_hands["Flush"]) and not context.blueprint then
            local _card = context.poker_hands["Flush"][1][1]
            if not SMODS.has_no_suit(_card) then
                card.ability.extra.suits = _card.base.suit
            else
                card.ability.extra.suits = "none"
            end
        end

        if context.individual and context.cardarea == G.play then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if not string.find(card.ability.extra.suits, "none") and not context.other_card:is_suit(card.ability.extra.suits) then
                    card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                    return{
                        message = localize("pm_upgraded"),
                        card = card
                    }
                end
            end
        end

        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                card = card
            }
        end
    end
}

-- Lemon 
SMODS.Joker{
    key = 'lemon',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 3, y = 0 },
    config = { extra = {money = 1, non_gold = 0} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return { vars = {card.ability.extra.money} }
    end,
    calculate = function(self, card, context)
        
        -- check if a gold card exists, then make the rest not gold
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Gold Card' then
                    active = true
                    break
                end
            end

            if active then
                for k, c in ipairs(context.scoring_hand) do
                    if c.ability.name ~= 'Gold Card' then
                        card.ability.extra.non_gold = card.ability.extra.non_gold + 1
                        c:set_ability(G.P_CENTERS.m_gold, nil, true)                       
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                c:juice_up()
                                return true
                            end
                        }))
                    end
                end
            end
            return{
                message = localize("pm_lemony"),
                card = card
            }
        end

        if context.joker_main and card.ability.extra.non_gold then        
            local dollars = card.ability.extra.money * card.ability.extra.non_gold
            ease_dollars(dollars)
            card.ability.extra.non_gold = 0
            return{
                message = "$"..dollars,
                card = card
            }
        end
    end
}

-- Cat-O-Luck
SMODS.Joker{
    key = 'catoluck',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 4, y = 0 },
    config = { extra = {odds = 10} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if pseudorandom('cat') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    active = true
                    c:set_ability(G.P_CENTERS.m_lucky, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end

            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
    end
}

-- Piggy Bank
SMODS.Joker{
    key = 'piggybank',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 5, y = 0 },
    config = { extra = {sell_gain = 2} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.sell_gain} }
    end,
    calculate = function(self, card, context)
        -- when buying, increase card value by $2
        if context.buying_card then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra.sell_gain
            card:set_cost()
            return{
                message = localize("k_val_up"),
                color = G.C.MONEY,
                card = card
            }
        end
    end
}

-- Bone
SMODS.Joker{
    key = 'bone',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 6, y = 0 },
    config = { extra = {hand_chips = 50} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = {card.ability.extra.hand_chips} }
    end,
    calculate = function(self, card, context)
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if c:is_face() then
                    active = true
                    c:set_ability(G.P_CENTERS.m_stone, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end
        
            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end

        if context.joker_main then
            local hand_chip_total = 0
            for i=1, #G.hand.cards do
                if G.hand.cards[i].config.center == G.P_CENTERS.m_stone then
                    hand_chip_total = hand_chip_total + card.ability.extra.hand_chips
                    card_eval_status_text(G.hand.cards[i], 'extra', nil, nil, nil, {message = "+50 Chips", colour = G.C.CHIPS})
                end
            end

            return{
                message = hand_chip_total.." Total",
                chips = hand_chip_total,
                card = card
            }
        end
    end
}

-- Bottle Opener (TBA)
-- Ice Pick (TBA)
-- Balloons (TBA)

-- Teapot
SMODS.Joker{
    key = 'teapot',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 2, y = 1 },
    config = { extra = {odds = 4, mult = 80, destroy = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if string.find(context.scoring_name, "Flush") and (pseudorandom('teapot') < (G.GAME.probabilities.normal / card.ability.extra.odds)) then
                card.ability.extra.destroy = true
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
		end

        if context.after and card.ability.extra.destroy then
            card:shatter()
        end
    end
}

-- Turnip
SMODS.Joker{
    key = 'turnip',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = false,
    pos = { x = 3, y = 1 },
    config = { extra = {min = 1, max = 20} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.min, card.ability.extra.max} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            card.ability.extra_value = pseudorandom('turnip', min, max) 
            card:shatter()
            return {
                message = localize('k_val_up'),
                colour = G.C.MONEY
            }
        end
    end
}

-- Instant Camera
SMODS.Joker{
    key = 'instantcamera',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 4, y = 1 },
    config = { extra = {Xmult = 2.0, odds = 4} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult} }
    end,
    calculate = function(self, card, context)

        -- each Glass Card held in hand has a chance to shatter and give XMult
        if context.individual and context.cardarea == G.hand and context.other_card.ability.name == 'Glass Card' then
            if not context.end_of_round and not context.other_card.debuff then
                if pseudorandom('camera') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    local c = context.other_card
                    G.E_MANAGER:add_event(Event({
                        delay = 0.5,
                        func = function()
                            c:shatter()
                            return true
                        end
                    }))
                    return {
                        x_mult = card.ability.extra.Xmult,
                        card = context.other_card
                    }
                end
            end
        end
    end
}

-- Basin
SMODS.Joker{
    key = 'basin',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 5, y = 1 },
    config = { extra = {odds = 5, Xmult = 1.0, Xmult_gain = 0.1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return { vars = {(G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint and string.find(context.scoring_name, "Flush") then
            local active = false
            for k, c in ipairs(context.scoring_hand) do
                if pseudorandom('basin') < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    active = true
                    c:set_ability(G.P_CENTERS.m_gold, nil, true)                       
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            c:juice_up()
                            return true
                        end
                    }))
                end
            end

            if active then
                return{
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end
        
        if context.joker_main then
            return{
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local gold_tally = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_gold then gold_tally = gold_tally + 1 end
            end
            card.ability.extra.Xmult = gold_tally * card.ability.extra.Xmult_gain
        else
            card.ability.extra.Xmult = 1
        end
    end
}

-- Battery
SMODS.Joker{
    key = 'battery',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 6, y = 1 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 0.1, active = false} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            local streak_lost = true
            local i = 1
            for k, c in ipairs(context.scoring_hand) do
                if c.ability.name == 'Steel Card' then
                    streak_lost = false
                    card.ability.extra.active = true
                    break
                end
                i = i + 1
            end

            if streak_lost then
                card.ability.extra.Xmult = 1.0
                card.ability.extra.active = false
                return{
                    message = localize("pm_lost"),
                    card = card
                }
            end
        end

        if context.individual and context.cardarea == G.play and not context.blueprint then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                if context.other_card.ability.name == 'Steel Card' then
                    card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                    return {
                        message = localize("pm_zapped"),
                        card = context.other_card
                    }
                end
            end
        end
        
        if context.joker_main then
            card.ability.extra.active = false
            return{
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end
}

-- Compass
SMODS.Joker{
    key = 'compass',
    rarity = 'pm_thing',
    atlas = 'Things',
    discovered = true,
    cost = 9,
    blueprint_compat = true,
    pos = { x = 7, y = 1 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { } }
    end,
    calculate = function(self, card, context)        
        
        if context.before and context.cardarea == G.jokers and not context.blueprint then
            -- check for leftmost steel card
            local active = false
            local _card = nil
            for i=1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name == 'Steel Card' then
                    active = true
                    _card = context.scoring_hand[i]
                end
            end

            -- if there is one, convert everything else to that card
            if active then
                for k, c in ipairs(context.scoring_hand) do
                    if c ~= _card then
                        assert(SMODS.change_base(c, _card.base.suit, _card:get_id()))               
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                c:flip()
                                return true
                            end
                        }))
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.15,
                            func = function()
                                c:flip()
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end
}

-- Cork (TBA)
-- Washing Machine (TBA)
-- Lightbulb (TBA)
-- Salt and Pepper (TBA)
-- Charcoal Grill (TBA)
-- Megaphone (TBA)
-- Magnifying Glass (TBA)
-- Claw Hammer (TBA)
-- Recorder (TBA)
-- Disco Ball (TBA)
-- Huey (TBA)

----------------------------------------------
------------MOD CODE END----------------------