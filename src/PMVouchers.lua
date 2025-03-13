SMODS.Voucher{
    key = 'copycat',
    discovered = true,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 0, y = 0 },
}

SMODS.Voucher{
    key = 'ghostblessing',
    discovered = true,
    cost = 10,
    requires = {'v_crystal_ball', 'v_pm_copycat'},
    atlas = 'PMVouchers', 
    pos = { x = 1, y = 0 },
}

SMODS.Voucher{
    key = 'autopaint',
    discovered = true,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 2, y = 0 },
    redeem = function(self, card)
        SMODS.Stickers['pm_monochrome'].rate = SMODS.Stickers['pm_monochrome'].rate * 0.0
        if G.GAME.modifiers['enable_pm_coloredin'] then SMODS.Stickers['pm_coloredin'].rate = 10.0 end
    end,
}

SMODS.Voucher{
    key = 'saturation',
    discovered = true,
    cost = 10,
    requires = {'v_pm_autopaint'},
    atlas = 'PMVouchers', 
    pos = { x = 3, y = 0 },
    redeem = function(self, card)
        if G.GAME.modifiers['enable_pm_coloredin'] then SMODS.Stickers['pm_coloredin'].rate = 0.0 end
    end,
}

SMODS.Voucher{
    key = 'thingshopper',
    discovered = true,
    cost = 10,
    atlas = 'PMVouchers', 
    pos = { x = 4, y = 0 },
}

SMODS.Voucher{
    key = 'replicahaver',
    discovered = true,
    cost = 10,
    requires = {'v_pm_thingshopper'},
    atlas = 'PMVouchers', 
    pos = { x = 5, y = 0 },
}
--[[
SMODS.Voucher{
    key = 'replicaenjoyer',
    discovered = true,
    cost = 10,
    requires = {'v_pm_replicahaver'},
    config = {xmult = 1.5},
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.xmult} }
    end
}]]