SMODS.Tag{
    key = 'thingtag',
    atlas = 'PMTags',
    pos = {x = 0, y = 0},
    in_pool = function(self)
        return pm_config.things_added
    end,
    apply = function(self, tag, context)
        if context.type == 'store_joker_create' then 
            local card = nil
            local rares_in_posession = {0}
            for k, v in ipairs(G.jokers.cards) do
                if v.config.center.rarity == 'pm_thing' and not rares_in_posession[v.config.center.key] then
                    rares_in_posession[1] = rares_in_posession[1] + 1 
                    rares_in_posession[v.config.center.key] = true
                end
            end

            if #G.P_JOKER_RARITY_POOLS['pm_thing'] > rares_in_posession[1] then 
                card = create_card('Joker', context.area, nil, 'pm_thing', nil, nil, nil, 'tta')
                create_shop_card_ui(card, 'Joker', context.area)
                card.states.visible = false
                tag:yep('+', G.C.RED,function() 
                    card:start_materialize()
                    card.ability.couponed = true
                    card:set_cost()
                    return true
                end)
            else
                tag:nope()
            end
            tag.triggered = true
            return card
        end    
    end,
}

SMODS.Tag{
    key = 'battlepass',
    atlas = 'PMTags',
    pos = {x = 1, y = 0},
    in_pool = function(self)
        return pm_config.bc_added
    end,
    apply = function(self, tag, context)
        if context.type == 'new_blind_choice' then
            local lock = tag.ID
            tag:yep('+', G.C.SECONDARY_SET.Spectral,function() 
                local key = 'p_pm_bc_huge_1'
                local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
                G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
                card.cost = 0
                card.from_tag = true
                G.FUNCS.use_card({config = {ref_table = card}})
                card:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end,
}