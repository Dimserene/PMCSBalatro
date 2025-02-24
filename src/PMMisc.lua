--- STEAMODDED HEADER
--- MOD_NAME: Paper Mario in Balatro
--- MOD_ID: PMCS
--- MOD_AUTHOR: TheSocialZombie
--- MOD_DESCRIPTION: A mod that adds Paper Mario themed Jokers into Balatro!
--- VERSION: 1.0.0
--- PREFIX: pm
----------------------------------------------
----TABLE OF CONTENTS-------------------------



------------MOD CODE -------------------------

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
                    ease_hands_played(card.ability.extra.hands)
                    return true
                end
            }
            ))
        end
    end,
}

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

SMODS.Consumable{
    key = 'fireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 0, y = 0 },
    config = {extra = {discards = 1}},
    cost = 1,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
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

SMODS.Consumable{
    key = 'bigfireflower',
    set = 'pm_BattleCard',
    atlas = 'BattleCards',
    pos = { x = 1, y = 0 },
    config = {extra = {discards = 2}},
    cost = 3,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
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



----------------------------------------------
------------MOD CODE END----------------------