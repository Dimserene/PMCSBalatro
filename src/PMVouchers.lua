SMODS.Voucher{
    key = 'copycat',
    discovered = false,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 0, y = 0 },
    in_pool = function(self, args)
        return pm_config.bc_rarity > 1
    end
}

SMODS.Voucher{
    key = 'ghostblessing',
    discovered = false,
    cost = 10,
    requires = {'v_pm_copycat'},
    atlas = 'PMVouchers', 
    pos = { x = 1, y = 0 },
    in_pool = function(self, args)
        return pm_config.bc_rarity > 1
    end
}

SMODS.Voucher{
    key = 'autopaint',
    discovered = false,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 2, y = 0 },
    redeem = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability['pm_monochrome'] and c.ability['pm_monochrome'].extra.drained_turns > 0 then
                SMODS.Stickers.pm_monochrome:apply(c, nil)
                card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_painted"), colour = G.C.FILTER, delay = 0.45})
                if G.GAME.modifiers['enable_pm_coloredin'] then SMODS.Stickers.pm_coloredin:apply(c, true) end
            end
        end
    end,
    in_pool = function(self, args)
        return pm_config.drained_rarity > 1
    end
}

SMODS.Voucher{
    key = 'saturation',
    discovered = false,
    cost = 10,
    requires = {'v_pm_autopaint'},
    atlas = 'PMVouchers', 
    pos = { x = 3, y = 0 },
    redeem = function(self, card)
        for i=1, #G.jokers.cards do
            local c = G.jokers.cards[i]
            if c.ability['pm_coloredin'] and c.ability['pm_coloredin'].extra.drained_turns > 0 then
                SMODS.Stickers.pm_coloredin:apply(c, nil)
                card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"), colour = G.C.FILTER, delay = 0.45})
            end
        end
        for i=1, #G.shop_jokers do
            local c = G.shop_jokers[i]
            if c.ability['pm_coloredin'] and c.ability['pm_coloredin'].extra.drained_turns > 0 then
                SMODS.Stickers.pm_coloredin:apply(c, nil)
                card_eval_status_text(c, 'extra', nil, nil, nil, {message = localize("pm_colorized"), colour = G.C.FILTER, delay = 0.45})
            end
        end
    end,
    in_pool = function(self, args)
        return pm_config.drained_rarity > 1 and G.GAME.modifiers['enable_pm_coloredin']
    end
}

SMODS.Voucher{
    key = 'thingshopper',
    discovered = false,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 4, y = 0 },
    in_pool = function(self, args)
        return pm_config.things_rarity > 1
    end
}

SMODS.Voucher{
    key = 'replicahaver',
    discovered = false,
    cost = 10,
    requires = {'v_pm_thingshopper'},
    atlas = 'PMVouchers', 
    pos = { x = 5, y = 0 },
}

SMODS.Voucher{
    key = 'smalltoride',
    discovered = false,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 6, y = 0 },
}

SMODS.Voucher{
    key = 'replicaenjoyer',
    discovered = false,
    cost = 10,
    requires = {'v_pm_smalltoride'},
    atlas = 'PMVouchers', 
    pos = { x = 7, y = 0 },
    config = {xmult = 1.5},
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.xmult} }
    end
}