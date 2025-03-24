SMODS.Achievement {
    key = 'booking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.booking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'bombking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bombking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'pirahnaking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pirahnaking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'pokeyking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pokeyking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'wigglerking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.wigglerking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'goombaking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.goombaking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'bloopking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bloopking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'lakituking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.lakituking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'thwompking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.thwompking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'billking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.billking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'cheepking_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.cheepking_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'junior_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.junior_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'bowser_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.bowser_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'drybowser_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.drybowser_won == true then
                return true
            end
        end
    end
}

-- Koopaling Wins
SMODS.Achievement {
    key = 'lemmy_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.lemmy_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'larry_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.larry_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'iggy_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.iggy_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'wendy_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.wendy_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'morton_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.morton_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'roy_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.roy_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'ludwig_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.ludwing_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'boomboom_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.boomboom_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'pompom_won',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions.pompom_won == true then
                return true
            end
        end
    end
}

SMODS.Achievement {
    key = 'color_splash',
    unlock_condition = function(self, args)
        if args.type == "boss_blind_win" then
            if G.GAME.pm_ach_conditions then
                for i=1, #G.GAME.pm_ach_conditions do
                    if G.GAME.pm_ach_conditions[i] ~= true then
                        return false
                    end
                end
                return true
            end
        end
    end
}



