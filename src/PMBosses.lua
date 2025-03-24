-- Boss Blinds

SMODS.Blind {
    key = 'booking',
    dollars = 5,
    mult = 2,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("f2fbff"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 0},
    in_pool = function(self)
        if G.jokers and G.jokers.cards then
            for i=1, #G.jokers.cards do
                if G.jokers.cards[i]:get_edition() and G.jokers.cards[i].edition.key == "e_negative" then return true end
            end
        end
        return false
    end,
    recalc_debuff = function(self, card, from_blind)
		if card:get_edition() and card.edition.key == "e_negative" then return true end
	end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.booking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'bombking',
    dollars = 5,
    mult = 2.5,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("ad2117"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 1},
    cap_score = function(self, score)
        if G.GAME.current_round.hands_played == 0 then
            G.GAME.blind:wiggle()
		    return math.floor(math.min(0.5 * G.GAME.blind.chips, score) + 0.5)
        end
        return score
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.bombking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'pirahnaking',
    dollars = 5,
    mult = 1.75,
    boss = { min = 4, max = 10 },
    discovered = false,
    boss_colour = HEX("07a80f"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 2},
    recalc_debuff = function(self, card, from_blind)
        if pseudorandom('petey') < 0.5 then return true end
        return false
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.pirahnaking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'pokeyking',
    dollars = 5,
    mult = 2,
    boss = { min = 2, max = 10 },
    discovered = false,
    boss_colour = HEX("c9b902"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 3},
    cap_score = function(self, score)
        self.triggered = false
        if G.GAME.last_hand_played == G.GAME.current_round.most_played_poker_hand then
            self.triggered = true
            G.GAME.blind:wiggle()
		    return math.floor(math.min(0.25 * G.GAME.blind.chips, score) + 0.5)
        end
        return score
    end,
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}, key = self.key}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize("pm_placeholderhand")}, key = self.key}
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.pokeyking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'wigglerking',
    dollars = 5,
    mult = 2,
    boss = { min = 6, max = 10 },
    discovered = false,
    boss_colour = HEX("fae70f"),
    debuff = {},
    vars = {activated = false},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 4},
    debuff_hand = function(self, cards, hand, handname, check)
        self.triggered = false
        if handname == G.GAME.current_round.most_played_poker_hand and not check and not self.vars.activated then
            self.triggered = true
            self.vars.activated = true
            G.GAME.blind:wiggle()
            G.GAME.blind.chips = get_blind_amount(G.GAME.round_resets.ante) * G.GAME.starting_params.ante_scaling * 4
		    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end,
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}, key = self.key}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize("pm_placeholderhand")}, key = self.key}
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.wigglerking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}


SMODS.Blind {
    key = 'goombaking',
    dollars = 5,
    mult = 2,
    boss = { min = 2, max = 10 },
    discovered = false,
    boss_colour = HEX("9c6410"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 5},
    set_blind = function(self)
        for i=1, #G.consumeables.cards do
            G.consumeables.cards[i]:set_debuff(true)
        end
    end,
    press_play = function(self)
        for i=1, #G.consumeables.cards do
            G.consumeables.cards[i]:set_debuff(true)
        end
    end,
    drawn_to_hand = function(self)
        for i=1, #G.consumeables.cards do
            G.consumeables.cards[i]:set_debuff(true)
        end
    end,
    disable = function(self)
        for i=1, #G.consumeables.cards do
            G.consumeables.cards[i]:set_debuff(nil)
        end
    end,
    defeat = function(self)
        for i=1, #G.consumeables.cards do
            G.consumeables.cards[i]:set_debuff(nil)
        end
        G.GAME.pm_ach_conditions.goombaking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'bloopking',
    dollars = 7,
    mult = 1,
    boss = { min = 4, max = 10 },
    discovered = false,
    boss_colour = HEX("444444"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 6},
    stay_flipped = function(self, area, card) 
        return true 
    end,
    press_play = function(self)
        for i=1, #G.hand.cards do
            if G.hand.cards[i].facing ~= 'front' then G.hand.cards[i]:flip() end
        end
    end,
    drawn_to_hand = function(self)
        for i=1, #G.hand.cards do
            if G.hand.cards[i].facing == 'front' then G.hand.cards[i]:flip() end
        end
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.blooperking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'lakituking',
    dollars = 5,
    mult = 2,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("ff6314"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 7},
    debuff_hand = function(self, cards, hand, handname, check)
        self.triggered = false
        if handname == G.GAME.current_round.most_played_poker_hand and not check then
            self.triggered = true
            G.GAME.blind:wiggle()
            return true
        end
    end,
    loc_vars = function(self)
        return {vars = {localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands')}, key = self.key}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize("pm_placeholderhand")}, key = self.key}
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.lakituking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'thwompking',
    dollars = 9,
    mult = 1,
    boss = { min = 8, max = 10, showdown = true },
    discovered = false,
    boss_colour = HEX("999999"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 8},
    set_blind = function(self)
        local t = {
            key = 'c_tower',
            edition = G.P_CENTERS.e_negative_consumable
        }
        local _card = SMODS.add_card(t)
        _card:set_edition('e_negative')
        G.GAME.blind.chips = 50 
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,
    debuff_hand = function(self, cards, hand, handname, check)
        for i=1, #G.play.cards do
            if G.play.cards[i].config.center ~= G.P_CENTERS.m_stone then return true end
        end
        return false
    end,
    in_pool = function(self)
        local counter = 0
        if G.playing_cards then
            for i=1, #G.playing_cards do
                if G.playing_cards[i].config.center == G.P_CENTERS.m_stone then
                    counter = counter + 1
                end
            end
            if counter > 30 then return true end
        end
        return false
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.thwompking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'billking',
    dollars = 5,
    mult = 2,
    boss = { min = 5, max = 10 },
    discovered = false,
    boss_colour = HEX("101112"),
    debuff = {},
    vars = {needed_debuffs = 15},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 9},
    set_blind = function(self)
        local total_debuffs = 0
        while total_debuffs <= self.vars.needed_debuffs do
            for i=1, #G.hand.cards do
                if total_debuffs > self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.hand.cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs > self.vars.needed_debuffs then break end
                end
            end

            for i=1, #G.playing_cards do
                if total_debuffs > self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.playing_cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs > self.vars.needed_debuffs then break end
                end
            end

            for i=1, #G.jokers.cards do
                if total_debuffs > self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.jokers.cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs > self.vars.needed_debuffs then break end
                end
            end
        end
    end,
    drawn_to_hand = function(self)
        for i=1, #G.hand.cards do
            G.hand.cards[i]:set_debuff(nil)
        end

        for i=1, #G.playing_cards do
            G.playing_cards[i]:set_debuff(nil)
        end

        for i=1, #G.jokers.cards do
            G.jokers.cards[i]:set_debuff(nil)
        end
        
        local total_debuffs = 0
        while total_debuffs < self.vars.needed_debuffs do
            for i=1, #G.hand.cards do
                if total_debuffs >= self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.hand.cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs >= self.vars.needed_debuffs then break end
                end
            end

            for i=1, #G.playing_cards do
                if total_debuffs > self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.playing_cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs >= self.vars.needed_debuffs then break end
                end
            end

            for i=1, #G.jokers.cards do
                if total_debuffs >= self.vars.needed_debuffs then break end
                if pseudorandom('bill') < 0.3 then 
                    G.jokers.cards[i]:set_debuff(true)
                    total_debuffs = total_debuffs + 1
                    if total_debuffs >= self.vars.needed_debuffs then break end
                end
            end
        end
    end,
    disable = function(self)
        for i=1, #G.hand.cards do
            G.hand.cards[i]:set_debuff(nil)
        end

        for i=1, #G.playing_cards do
            G.playing_cards[i]:set_debuff(nil)
        end

        for i=1, #G.jokers.cards do
            G.jokers.cards[i]:set_debuff(nil)
        end
    end,
    defeat = function(self)
        for i=1, #G.hand.cards do
            G.hand.cards[i]:set_debuff(nil)
        end

        for i=1, #G.playing_cards do
            G.playing_cards[i]:set_debuff(nil)
        end

        for i=1, #G.jokers.cards do
            G.jokers.cards[i]:set_debuff(nil)
        end
        G.GAME.pm_ach_conditions.billking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'cheepking',
    dollars = 5,
    mult = 2,
    boss = { min = 4, max = 10 },
    discovered = false,
    boss_colour = HEX("0251f0"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 10},
    debuff_hand = function(self, cards, hand, handname, check)
        self.triggered = false
        local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards) -- all this just to get unscored cards
        if #scoring_hand < #G.play.cards then return true end
        return false
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.cheepking_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'junior',
    dollars = 5,
    mult = 2,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("0b9c2d"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 11},
    recalc_debuff = function(self, card, from_blind)
        if card:get_edition() then return true end
        if card.ability.set ~= 'Joker' and card.seal then return true end
        if card.ability.set ~= 'Joker' and card.config.center ~= G.P_CENTERS.c_base then return true end
        return false
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.junior_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'bowser',
    dollars = 7,
    mult = 2,
    boss = { min = 8, max = 10, showdown = true },
    discovered = false,
    boss_colour = HEX("990000"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 12},
    press_play = function(self)
        G.E_MANAGER:add_event(Event({ func = function()
            local any_selected = nil
            for k, v in ipairs(G.hand.cards) do
                if v.config.center ~= G.P_CENTERS.c_base or v:get_edition() or v.seal then
                    G.hand:add_to_highlighted(v, true)
                    any_selected = true
                    play_sound('card1', 1)
                end
            end
            
            if any_selected then G.FUNCS.discard_cards_from_highlighted(nil, true) end
        return true end })) 

        self.triggered = true
        delay(0.7)
        return true
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.bowser_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'drybowser',
    dollars = 10,
    mult = 2,
    boss = { min = 8, max = 10, showdown = true },
    discovered = false,
    boss_colour = HEX("26b0ff"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 13},
    press_play = function(self)
        G.E_MANAGER:add_event(Event({ func = function()
            for k, v in ipairs(G.hand.cards) do
                if v.config.center ~= G.P_CENTERS.c_base or v:get_edition() or v.seal then
                    if v.config.center == G.P_CENTERS.m_glass then
                        v:shatter()
                    else
                        v:start_dissolve()
                    end
                    play_sound('card1', 1)
                end
            end
        return true end })) 

        self.triggered = true
        delay(0.7)
        return true
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.drybowser_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

-- Koopalings
SMODS.Blind {
    key = 'lemmy',
    dollars = 5,
    mult = 2,
    boss = { min = 2, max = 10, },
    discovered = false,
    boss_colour = HEX("f7eb00"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 14},
    press_play = function(self)
        delay(0.6)
        for i=1, #G.play.cards do
            G.play.cards[i]:flip()
        end

        G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function()
            G.E_MANAGER:add_event(Event({ func = function() G.play:shuffle('aajk'); play_sound('cardSlide1', 0.85);return true end })) 
            delay(0.15)
            G.E_MANAGER:add_event(Event({ func = function() G.play:shuffle('aajk'); play_sound('cardSlide1', 1.15);return true end })) 
            delay(0.15)
            G.E_MANAGER:add_event(Event({ func = function() G.play:shuffle('aajk'); play_sound('cardSlide1', 1);return true end })) 
            delay(0.5)
        return true end }))

        self.triggered = true
        delay(0.7)
        return true
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.lemmy_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'larry',
    dollars = 5,
    mult = 2,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("0094de"),
    debuff = {},
    vars = {nuit = 'Hearts'},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 15},
    set_blind = function(self)
        self.vars.nuit = pseudorandom_element(SMODS.Suits, pseudoseed('larry'))
    end,
    debuff_hand = function(self, cards, hand, handname, check)
        self.triggered = false
        for i=1, #G.play.cards do
            if G.play.cards[i].base.suit == self.vars.nuit then 
                self.triggered = true
                G.GAME.blind:wiggle()
                return true
            end
        end
        return false
    end,
    loc_vars = function(self)
        return {vars = {self.vars.nuit}, key = self.key}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize("pm_placeholdersuit")}, key = self.key}
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.larry_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'iggy',
    dollars = 5,
    mult = 2,
    boss = { min = 4, max = 10 },
    discovered = false,
    boss_colour = HEX("06d12f"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 16},
    press_play = function(self)
        local chip_extra = 0
        G.E_MANAGER:add_event(Event({ func = function()
            local any_selected = nil
            local _cards = {}
            for k, v in ipairs(G.hand.cards) do
                _cards[#_cards+1] = v
            end
            if G.hand.cards[1] then 
                local selected_card, card_key = pseudorandom_element(_cards, pseudoseed('hook'))
                G.hand:add_to_highlighted(selected_card, true)
                table.remove(_cards, card_key)
                any_selected = true
                play_sound('card1', 1)
                chip_extra = pm_total_chips(selected_card) * 100
            end
            if any_selected then G.FUNCS.discard_cards_from_highlighted(nil, true) end
            G.GAME.blind:wiggle()
            G.GAME.blind.chips = G.GAME.blind.chips + chip_extra
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        return true end })) 
        
        self.triggered = true
        delay(0.7)
        return true
    end,
    loc_vars = function(self)
        return {vars = {self.vars.nuit}, key = self.key}
    end,
    collection_loc_vars = function(self)
        return {vars = {localize("pm_placeholdersuit")}, key = self.key}
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.larry_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'wendy',
    dollars = 5,
    mult = 2,
    boss = { min = 3, max = 10 },
    discovered = false,
    boss_colour = HEX("ff52bc"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 17},
    recalc_debuff = function(self, card, from_blind)
        if not card:is_face() and card.area ~= G.jokers then
            return true
        end
        return false
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.wendy_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'morton',
    dollars = 5,
    mult = 2,
    boss = { min = 6, max = 10 },
    discovered = false,
    boss_colour = HEX("bab4a4"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 18},
    cap_score = function(self, score)
        self.triggered = false
        for i=1, #G.play.cards do
            if G.play.cards[i].config.center == G.P_CENTERS.m_stone then
                self.triggered = true
                G.GAME.blind:wiggle()
		        return math.floor(math.min(0.25 * G.GAME.blind.chips, score) + 0.5)
            end
        end
        return score
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.morton_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}


SMODS.Blind {
    key = 'roy',
    dollars = 5,
    mult = 2,
    boss = { min = 7, max = 10 },
    discovered = false,
    boss_colour = HEX("d90773"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 19},
    disable = function(self)
        self.triggered = true
        G.GAME.blind:wiggle()
        G.GAME.blind.chips = get_blind_amount(G.GAME.round_resets.ante) * G.GAME.starting_params.ante_scaling * self.mult * 5
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.roy_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'ludwig',
    dollars = 5,
    mult = 2,
    boss = { min = 5, max = 10 },
    discovered = false,
    boss_colour = HEX("d90773"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 20},
    set_blind = function(self)
        local t = {}
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if pm_in_array(t, c.config.center.key) then SMODS.debuff_card(c, true, 'ludwiggaming')
            else t[#t+1] = c.config.center.key end
        end
    end,
    drawn_to_hand = function(self)
        local t = {}
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if pm_in_array(t, c.config.center.key) then SMODS.debuff_card(c, true, 'ludwiggaming')
            else t[#t+1] = c.config.center.key end
        end
    end,
    disable = function(self)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            SMODS.debuff_card(c, nil, 'ludwiggaming')
        end
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.ludwig_won = true
        check_for_unlock({type = 'boss_blind_win'})
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            SMODS.debuff_card(c, nil, 'ludwiggaming')
        end
    end,
}

SMODS.Blind {
    key = 'boomboom',
    dollars = 5,
    mult = 2,
    boss = { min = 4, max = 10 },
    discovered = false,
    boss_colour = HEX("f09205"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 21},
    cap_score = function(self, score)
        if G.GAME.current_round.hands_played <= 1 and G.GAME.current_round.hands_left > 0 then
            G.GAME.blind:wiggle()
            self.triggered = true
		    return math.floor(math.min(0.25 * G.GAME.blind.chips, score) + 0.5)
        end
        return score
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.boomboom_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'pompom',
    dollars = 5,
    mult = 2,
    boss = { min = 6, max = 10 },
    discovered = false,
    boss_colour = HEX("b81a7b"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 22},
    cap_score = function(self, score)
        if pseudorandom('pom') <= 0.25 and G.GAME.current_round.hands_left ~= 0 then
            G.GAME.blind:wiggle()
            self.triggered = true
		    return math.floor(math.min(0.1 * G.GAME.blind.chips, score) + 0.5)
        end
        return score
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.boomboom_won = true
        check_for_unlock({type = 'boss_blind_win'})
    end,
}

SMODS.Blind {
    key = 'kamek',
    dollars = 8,
    mult = 2,
    boss = { min = 8, max = 10, showdown = true },
    discovered = false,
    boss_colour = HEX("5e45d9"),
    debuff = {},
    vars = {},
    atlas = 'PMBlinds',
    pos = {x = 0, y = 23},
    set_blind = function(self)
        for i=1, #G.playing_cards do
            local c = G.playing_cards[i]
            local key = c.config.center.key
            local old = (c.ability.old_bonus or 0) + (c.ability.perma_bonus or 0) 
            c:set_ability('m_pm_slipper', nil, true)
            c.ability.old_enhancement = key
            c.ability.old_bonus = old
        end
    end,
    disable = function(self)
        for i=1, #G.playing_cards do
            local c = G.playing_cards[i]
            c.ability.bonus = c.ability.old_bonus or 0
            c:set_ability(c.ability.old_enhancement or G.P_CENTERS.c_base, nil, true) 
        end
    end,
    defeat = function(self)
        G.GAME.pm_ach_conditions.kamek_won = true
        check_for_unlock({type = 'boss_blind_win'})
        for i=1, #G.playing_cards do
            local c = G.playing_cards[i]
            c.ability.bonus = c.ability.old_bonus or 0
            c:set_ability(c.ability.old_enhancement or G.P_CENTERS.c_base, nil, true) 
        end
    end,
}