--- STEAMODDED HEADER
--- MOD_NAME: Paper Mario in Balatro
--- MOD_ID: PMCS
--- MOD_AUTHOR: [TheSocialZombie]
--- MOD_DESCRIPTION: A mod that adds Paper Mario themed Jokers into Balatro!
--- VERSION: 1.0.0
--- PREFIX: PM
----------------------------------------------
----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------

-- Kamek
SMODS.Joker{
    key = 'kamek',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    config = { extra = {discards = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.discards} }
    end,
    calculate = function(self, card, context)
        
        -- Shake while discard is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 then
                local eval = function() return G.GAME.current_round.discards_used <= 0 and not G.RESET_JIGGLES end
                juice_card_until(card, eval, true)
            end
        end

        if context.discard then
            if not context.blueprint and G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
                -- create the tarot card
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Spectral',G.consumeables, nil, nil, nil, nil, nil, 'car')
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})                     
                        return true
                end)}))

                card:juice_up(0.3, 0.4)
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("pm_magic")})
                return {
                    remove = true,
                    card = self
                }
            end
        end
    end,
    
    -- extra discard functions
    add_to_deck = function(self, card, from_debuff)
		ease_discard(card.ability.extra.discards)
	end,
	remove_from_deck = function(self, card, from_debuff)
		ease_discard(card.ability.extra.discards*-1)
	end
}

-- Morton
SMODS.Joker{
    key = 'morton',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 0 },
    soul_pos = { x = 3, y = 0 },
    config = { extra = {hand = "Flush", Xmult = 3, active = false} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_tower
        return { vars = { card.ability.extra.hand, card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)

        -- Getting a Tower Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_tower')
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
        end

        -- If every card is a stone card, 
        if context.cardarea == G.play and context.before and not context.blueprint then
            local stone_count = 0
            local four_fingers = (next(find_joker('j_pm_plunger')) and 3) or next(find_joker('Four Fingers')) and 4 or 5
            for i=1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name == 'Stone Card' then stone_count = stone_count + 1 end
            end

            if stone_count >= (four_fingers) then
                card.ability.extra.active = true
            end
        end


        if context.joker_main then
            if card.ability.extra.active then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        if context.final_scoring_step then
            card.ability.extra.active = false
        end
    end
}

-- Iggy
SMODS.Joker{
    key = 'iggy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 1 },
    soul_pos = { x = 1, y = 1 },
    config = { extra = {Xmult = 1.0} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.Xmult} }
    end,
    calculate = function(self, card, context)

        -- Shake while first card is active
        if context.first_hand_drawn then
            if not context.blueprint and G.GAME.current_round.hands_played <= 0 then
                local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
                juice_card_until(self, eval, true)
            end
        end

        -- first hand played
        if context.pre_joker and context.cardarea == G.jokers and context.full_hand and G.GAME.current_round.hands_played == 0 then
            local rndcard = pseudorandom_element(G.hand.cards, pseudoseed('iggy'))
            card.ability.extra.Xmult = card.ability.extra.Xmult + (rndcard.base.nominal / 10)
            rndcard:juice_up()
            rndcard:start_dissolve()
            return{
                message = localize("pm_upgraded"),
                card = card
            }
        end

        -- apply Xmult
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end
}

-- Ludwig
SMODS.Joker{
    key = 'ludwig',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 1.0} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_pm_ludwigcopy
        return { vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_gain} }
    end,
    calculate = function(self, card, context)

        -- at the end of a boss blind, gain a Ludwig Copy
        if context.end_of_round and G.GAME.blind.boss then
            local t = {
                set = 'Joker',
                area = G.jokers,
                key = 'j_pm_ludwigcopy',
                edition = {negative = true},
            }
            SMODS.add_card(t)
            
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
        end

        -- apply Xmult
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end,
    update = function(self, card, dt)
        if G.STAGE == G.STAGES.RUN then
            local bro_count = 0
            for i = 1, #G.jokers.cards do
                local j = G.jokers.cards[i]
                if string.find(j.config.center.key, 'j_pm_ludwigcopy') and card ~= j then
                    bro_count = bro_count + 1
                end
            end

            if bro_count > 0 then
                card.ability.extra.Xmult = card.ability.extra.Xmult_gain * bro_count
            end
        else
            card.ability.extra.Xmult = 1.0
        end
    end
}

-- Ludwig Copy
SMODS.Joker{
    key = 'ludwigcopy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 1,
    blueprint_compat = false,
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    calculate = function(self, card, context)

    end
}

-- Wendy
SMODS.Joker{
    key = 'wendy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 2 },
    soul_pos = { x = 1, y = 2 },
    config = { extra = {Xmult = 1.0, Xmult_gain = 0.1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_jupiter
        return { vars = {card.ability.extra.Xmult, card.ability.extra.Xmult_gain} }
    end,
    calculate = function(self, card, context)

        -- Getting a Negative Jupiter Card when you start a round
        if context.first_hand_drawn then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local _card = create_card('Planet', G.consumeables, nil, nil, nil, nil, 'c_jupiter')
                local edition = {negative = true}
                _card:set_edition(edition, true)
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
            end
        end

        if context.before and not context.blueprint then
            if string.find(context.scoring_name, "Straight") then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
                return {
                    colour = G.C.MULT,
                    message = localize("pm_upgraded"),
                    card = card
                }
            end
        end

        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card
            }
        end
    end
}

-- Larry
SMODS.Joker{
    key = 'larry',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = true,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 2 },
    soul_pos = { x = 3, y = 2 },
    config = { extra = {joker_count = 5} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.joker_count} }
    end,
    calculate = function(self, card, context)

        if context.setting_blind and not context.blueprint then
            if #G.jokers.cards >= card.ability.extra.joker_count then
                local edition = {negative = true}
                card:set_edition(edition, true)
            end
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('pm_upgraded'), colour = G.C.PURPLE}) 
        end

        if context.setting_blind and not (context.blueprint_card or self).getting_sliced and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
            local jokers_to_create = math.min(1, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
            local t = {
                set = 'Joker',
                area = G.jokers,
            }
            if jokers_to_create then SMODS.add_card(t) end
            
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
        end
    end
}

-- Lemmy
SMODS.Joker{
    key = 'lemmy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = true,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 0, y = 3 },
    soul_pos = { x = 1, y = 3 },
    config = { extra = {mult = 10} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local thunk = 0
            for k, v in ipairs(context.full_hand) do
                if v.ability.set == 'Enhanced' and v.ability.name ~= "Wild Card" then
                    thunk = thunk + 1
                    v:set_ability(G.P_CENTERS.m_wild, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
            if thunk > 0 then
                return{
                    message = localize('pm_wild'),
                    colour = G.C.PURPLE
                }
            end
        end

        if context.individual and context.cardarea == G.play and context.other_card.ability.name == 'Wild Card' then
            if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
                return {
                    mult = card.ability.extra.mult,
                    card = card
                }
            end
        end
    end
}

-- Roy
SMODS.Joker{
    key = 'roy',
    rarity = 4,
    atlas = 'Koopalings',
    discovered = false,
    cost = 20,
    blueprint_compat = true,
    pos = { x = 2, y = 3 },
    soul_pos = { x = 3, y = 3 },
    config = { extra = {Xmult = 5.0, cur_hands = 0, hands = 3, active = false, triggered = false} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.Xmult, card.ability.extra.cur_hands, card.ability.extra.hands} }
    end,
    calculate = function(self, card, context)

        -- reset when blind starts
        if context.setting_blind or context.end_of_round then
            card.ability.extra.cur_hands = 0
            card.ability.extra.active = false
            card.ability.extra.triggered = false
        end

        if self.debuff then self.debuff = false end

        -- Stealing code from Matador and Luchador. Fitting.
        if context.debuffed_hand and not card.ability.extra.triggered then 
            if G.GAME.blind.triggered then
                if card.ability.extra.cur_hands >= card.ability.extra.hands - 1 then
                    if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then 
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
                        G.GAME.blind:disable()
                        card.ability.extra.active = true
                    end
                else
                    card.ability.extra.cur_hands = card.ability.extra.cur_hands + 1
                    card.ability.extra.triggered = true
                    return{
                        message = localize("pm_upgraded"),
                        card = card
                    }
                end
            end
        elseif context.cardarea == G.jokers and not (context.blueprint or context.repetition or context.individual or context.after or context.before or context.final_scoring_step or context.hand_drawn) and not card.ability.extra.triggered then 
            if G.GAME.blind.triggered then
                if card.ability.extra.cur_hands >= card.ability.extra.hands - 1 then
                    if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then 
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
                        G.GAME.blind:disable()
                        card.ability.extra.active = true
                    end
                else
                    card.ability.extra.cur_hands = card.ability.extra.cur_hands + 1
                    card.ability.extra.triggered = true
                    return{
                        message = localize("pm_upgraded"),
                        card = card
                    }
                end
            end
        end

        -- apply Xmult when ability active
        if context.joker_main then
            if card.ability.extra.active then
                return {
                    xmult = card.ability.extra.Xmult,
                    card = card
                }
            end
        end

        if context.final_scoring_step then
            card.ability.extra.triggered = false
        end
    end
}


----------------------------------------------
------------MOD CODE END----------------------