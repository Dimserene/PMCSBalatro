SMODS.Challenge {
    key = 'burntsteak',
    rules = {
        custom = {

        },
        modifiers = {
        
        }
    },
    jokers = {
        {id = 'j_pm_grill', eternal = true},
        {id = 'j_pm_morton', eternal = true},
    },
    restrictions = {
        banned_cards = {
            {id = 'j_pm_hammer'},
            {id = 'j_pm_fan'},
            {id = 'j_pm_slurpguy'},
            {id = 'j_pm_blueslurp'},
            {id = 'j_pm_yellowslurp'},
            {id = 'j_pm_swoop'},
            {id = 'j_pm_hammerbro'},
            {id = 'j_pm_icebro'},
            {id = 'j_pm_fpirplant'},
            {id = 'j_pm_lemmy'},
            {id = 'j_pm_catoluck'},
        },
        banned_consumeables = {
            {id = 'c_magician'},
            {id = 'c_empress'},
            {id = 'c_hierophant'},
            {id = 'c_lovers'},
            {id = 'c_chariot'},
            {id = 'c_justice'},
            {id = 'c_devil'},
        },
        banned_other = {
            {id = 'bl_pm_lakituking', type = 'blind'},
            {id = 'bl_goad', type = 'blind'},
        },
    },
    deck = {
        type = 'Challenge Deck',
        cards = {
            {s = 'S', r = '10'},
            {s = 'S', r = '10'},
            {s = 'S', r = '10'},
            {s = 'S', r = '10'},
            {s = 'S', r = '10'},
            {s = 'S', r = 'J'},
            {s = 'S', r = 'J'},
            {s = 'S', r = 'J'},
            {s = 'S', r = 'J'},
            {s = 'S', r = 'J'},
            {s = 'S', r = 'Q'},
            {s = 'S', r = 'Q'},
            {s = 'S', r = 'Q'},
            {s = 'S', r = 'Q'},
            {s = 'S', r = 'Q'},
            {s = 'S', r = 'K'},
            {s = 'S', r = 'K'},
            {s = 'S', r = 'K'},
            {s = 'S', r = 'K'},
            {s = 'S', r = 'K'},
            {s = 'S', r = 'A'},
            {s = 'S', r = 'A'},
            {s = 'S', r = 'A'},
            {s = 'S', r = 'A'},
            {s = 'S', r = 'A'},
        }
    }
}

SMODS.Challenge {
    key = 'solucky',
    rules = {
        custom = {

        },
        modifiers = {
        
        }
    },
    jokers = {
        {id = 'j_pm_yellowslurfit', eternal = true},
        {id = 'j_lucky_cat', eternal = true},
    },
    restrictions = {
        banned_cards = {
        },
    },
    deck = {
        type = 'Challenge Deck',
        enhancement = 'm_lucky',
    }
}

SMODS.Challenge {
    key = 'goldshower',
    rules = {
        custom = {
            {id = 'chips_dollar_cap'},
        },
        modifiers = {
            {id = 'dollars', value = 100},
        }
    },
    jokers = {
        {id = 'j_pm_lemon', eternal = true},
        {id = 'j_pm_basin', eternal = true},
    },
    restrictions = {
        banned_other = {
            {id = 'bl_pm_junior', type = 'blind'},
            {id = 'bl_pm_drybowser', type = 'blind'},
        },
    },
    deck = {
        type = 'Challenge Deck',
    }
}

SMODS.Challenge {
    key = 'burningdeck',
    rules = {
        custom = {
        },
        modifiers = {
        }
    },
    jokers = {
        {id = 'j_pm_fpirplant', eternal = true},
        {id = 'j_pm_ptooie', eternal = true},
        {id = 'j_pm_dino', eternal = true},
        {id = 'j_pm_fuzzy', eternal = true},
        {id = 'j_pm_hairdryer', eternal = true},
    },
    restrictions = {
    },
    deck = {
        type = 'Challenge Deck',
    }
}