--- STEAMODDED HEADER
--- MOD_NAME: Paper Mario in Balatro
--- MOD_ID: PMCS
--- MOD_AUTHOR: TheSocialZombie
--- MOD_DESCRIPTION: A mod that adds Paper Mario themed Jokers into Balatro!
--- VERSION: 1.0.0
--- PREFIX: PM
----------------------------------------------
--- #ADD TABLE OF CONTENTS#-------------------



------------MOD CODE -------------------------

--Creates atlases for cards to use

SMODS.Atlas { -- The main atlas, used for all basic enemy types (yes, even sombrero)
	-- Key for code to find it with
	key = "PaperMario",
	-- The name of the file, for the code to pull the atlas from
	path = "PaperMario.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Koopalings (and Kamek)
	-- Key for code to find it with
	key = "Koopalings",
	-- The name of the file, for the code to pull the atlas from
	path = "Koopalings.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

SMODS.Atlas { -- All Thing Jokers
	-- Key for code to find it with
	key = "Things",
	-- The name of the file, for the code to pull the atlas from
	path = "PaperMario.png",
	-- Width of each sprite in 1x size
	px = 220,
	-- Height of each sprite in 1x size
	py = 307
}

-- save current paths
mod_dir = ''..SMODS.current_mod.path
pm_config = SMODS.current_mod.config
-- loads all joker files for use later
local path = SMODS.current_mod.path..'src/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('src/'..v))()
end

--Load UI file
local UI, load_error = SMODS.load_file("pmui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
end

-- make retriggers exist
SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true
    }
end

-- load custom rarities
SMODS.Rarity{
    key = "thing",
    default_weight = 0.02,
    badge_colour = HEX("EBD534"),
    pools = {["Joker"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

pm_total_chips = function(card)
    local total_chips = (card.base.nominal) + (card.ability.bonus) + (card.ability.perma_bonus or 0) 
    if card.edition then total_chips = total_chips + (card.edition.chips or 0) end
    return total_chips
  end

-- literally just a function check to see if a card is a slurp card.
function Card:is_slurp()
    local check = 0
    if self.ability.extra.slurp then
        check = self.ability.extra.slurp
    end
    return check
end

-- literally just a function check to see if a card is a bro card.
function Card:is_bro()
    local check = 0
    if self.ability.extra.bro then
        check = self.ability.extra.bro
    end
    return check
end

-- remove function, received from the Pokermon Mod
remove = function(self, card, context)
play_sound('tarot1')
card:juice_up(0.3, 0.4)
card.states.drag.is = true
card.children.center.pinch.x = true
G.E_MANAGER:add_event(Event({
    trigger = 'after', delay = 0.3, blockable = false,
    func = function()
        G.jokers:remove_card(card)
        card:remove()
        card = nil
        return true
    end
}))
card.gone = true
return true
end

function Card:rand_enhance()
    local t = {G.P_CENTERS.m_bonus, G.P_CENTERS.m_mult, G.P_CENTERS.m_wild, G.P_CENTERS.m_glass, G.P_CENTERS.m_steel, G.P_CENTERS.m_stone, G.P_CENTERS.m_gold, G.P_CENTERS.m_lucky}
    local enhancement_type = pseudorandom_element(t, pseudoseed('rand'))

    self:set_ability(enhancement_type, nil, true)
end  
    

-- checking if a value is in an array
pm_in_array = function(table, value)
    for i = 1, #table do
        if (table[i] == value) then
            return true
        end
    end
    return false
end

-- checking if a value is NOT in an array
pm_nt_array = function(table, value)
    for i = 1, #table do
        if (table[i] == value) then
            return false
        end
    end
    return true
end

-- we're injecting not using lovely babyyyyyyyyy
local get_flush_ref = get_flush
function get_flush(hand)
  local base = get_flush_ref(hand)
  local results = {}
  local spiketop = next(find_joker('j_pm_spiketop'))
  local morton = next(find_joker('j_pm_morton'))
  local target = (next(find_joker('j_pm_plunger')) and 3) or (next(find_joker('Four Fingers')) and 4) or 5
  local suits = {
    ["Spades"] = 0,
    ["Hearts"] = 0,
    ["Clubs"] = 0,
    ["Diamonds"] = 0,
  }
  local nuits = {
    "Spades",
    "Hearts",
    "Clubs",
    "Diamonds"
  }
  
    if (not spiketop and not morton) and #hand < target then
        return base
    elseif not spiketop and not morton then
        for j = 1, #nuits do
            local t = {}
            local suit = nuits[j]
            local flush_count = 0
            for i=1, #hand do
              if hand[i]:is_suit(suit, nil, true) then flush_count = flush_count + 1;  t[#t+1] = hand[i] end 
            end
            if flush_count >= target then
              table.insert(results, t)
              return results
            end
        end
        return {}
    else
        if morton then -- morton check
            local m = {}
            local stone_count = 0
            for i=1, #hand do
                if hand[i].ability.name == 'Stone Card' then stone_count = stone_count + 1; m[#m+1] = hand[i] end
            end

            if stone_count >= target then
                table.insert(results, m)
                return results 
            end
        end
        if spiketop then -- spiketop check
            local t = {}
            for k, v in pairs(suits) do
                local suit = k
                local flush_count = 0
                for i=1, #hand do
                    if hand[i].ability.name ~= 'Wild Card' then
                        if hand[i]:is_suit(suit, nil, true) then 
                            flush_count = flush_count + 1  
                            suits[suit] = suits[suit] + 1
                            t[#t+1] = hand[i] 
                        end 
                    end
                end

                for i=1, #hand do
                    if hand[i].ability.name == 'Wild Card' then
                        if hand[i]:is_suit(suit) and suits[suit] == 0 then 
                            flush_count = flush_count + 1  
                            suits[suit] = suits[suit] + 1
                            t[#t+1] = hand[i] 
                        end 
                    end
                end

                if flush_count >= (5 - (target and 1 or 0)) then
                    table.insert(results, t)
                    return results
                end
            end
            if suits["Spades"] > 0 and suits["Hearts"] > 0 and suits["Diamonds"] > 0 and suits["Clubs"] > 0 then
                table.insert(results, t)
                return results
            else
                return {}
            end
        end
    end
end

-- replacing an SMOD function lol
function SMODS.calculate_destroying_cards(context, cards_destroyed, scoring_hand)
    for i,card in ipairs(scoring_hand or context.cardarea.cards) do
        local destroyed = nil
        --un-highlight all cards
        if scoring_hand then highlight_card(card,(i-0.999)/(#scoring_hand-0.998),'down') end

        -- context.destroying_card calculations
        context.destroy_card = card
        context.destroying_card = scoring_hand and card
        for _, area in ipairs(SMODS.get_card_areas('jokers')) do
            local should_break
            for _, _card in ipairs(area.cards) do
                local eval, post = eval_card(_card, context)
                local self_destroy = false
                for key, effect in pairs(eval) do
                    if type(effect) == 'table' then
                        self_destroy = SMODS.calculate_effect(effect, card)
                    else
                        self_destroy = effect
                    end
                end
                SMODS.trigger_effects({post}, card)
                if self_destroy then 
                    destroyed = true
                    should_break = true
                    break
                end
            end
            if should_break then break end
        end
        
        if scoring_hand and not next(SMODS.find_card('j_pm_instantcamera')) and SMODS.has_enhancement(card, 'm_glass') and not card.debuff and pseudorandom('glass') < G.GAME.probabilities.normal/(card.ability.name == 'Glass Card' and card.ability.extra or G.P_CENTERS.m_glass.config.extra) then
            destroyed = true
        end
        
        local eval, post = eval_card(card, context)
        local self_destroy = false
        for key, effect in pairs(eval) do
            self_destroy = SMODS.calculate_effect(effect, card)
        end
        SMODS.trigger_effects({post}, card)
        if self_destroy then destroyed = true end
        
        -- TARGET: card destroyed

        if destroyed then 
            if SMODS.shatters(card) then
                card.shattered = true
            else 
                card.destroyed = true
            end 
            cards_destroyed[#cards_destroyed+1] = card
        end
    end
end

----------------------------------------------
------------MOD CODE END----------------------