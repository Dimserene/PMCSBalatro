return {
    descriptions = {
        Back={},
        Blind={},
        Edition={
            e_pm_replica = {
                name = "Replica",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "{s:0.9,C:inactive}A less effective{}",
                    "{s:0.9,C:inactive}duplicate of the original.{}",
                },
            },
        },
        Enhanced={
            m_pm_frozen = {
                name = "Frozen",
                text = {
                    "{C:mult}+#1#{} Mult when held in hand",
                    "cannot be {C:red}debuffed{}",
                }
            },
        },
        Joker={

            j_pm_shyguy = {

                name = "Shy Guy",
                text = {
                    "{C:chips}+#1#{} Chips",
                },
            },

            j_pm_greenguy = {
              
                name = "Green Shy Guy",
                text = {
                    "Played cards with {C:spades}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_yellowguy = {
              
                name = "Yellow Shy Guy",
                text = {
                    "Played cards with {C:diamonds}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },
            
            j_pm_blueguy = {
              
                name = "Blue Shy Guy",
                text = {
                    "Played cards with {C:clubs}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_pinkguy = {
              
                name = "Pink Shy Guy",
                text = {
                    "Played cards with {C:hearts}#2#{} suit",
                    "give {C:chips}+#1#{} Chips when scored",
                },
            },

            j_pm_slurpguy = {
              
                name = "Slurp Guy",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult per scoring", 
                    "{C:attention}Enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_blueslurp = {
              
                name = "Blue Slurp Guy",
                text = {
                    "This Joker gains {C:chips}+#2#{} Chips per scoring", 
                    "{C:attention}Enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_yellowslurp = {
              
                name = "Yellow Slurp Guy",
                text = {
                    "This Joker gives {C:money}$#1#{} per scoring", 
                    "{C:attention}low enhanced card{} played and",
                    "{C:money}$#2#{} per {C:attention}high enhanced card{} played,",
                    "removes card {C:attention}enhancement{}",
                },
            },

            j_pm_spikeguy = {
              
                name = "Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                },
            },

            j_pm_greenspike = {
              
                name = "Green Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:spades}#2#{} suit",
                },
            },
            
            j_pm_bluespike = {
              
                name = "Blue Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:clubs}#2#{} suit",
                },
            },

            j_pm_yellowspike = {
              
                name = "Yellow Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:diamonds}#2#{} suit",
                },
            },

            j_pm_pinkspike = {
              
                name = "Pink Spike Guy",
                text = {
                    "{C:chips}+#1#{} Chips if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:hearts}#2#{} suit",
                },
            },

            j_pm_rollerguy = {
              
                name = "Roller Guy",
                text = {
                    "This Joker gains {C:chips}+#2#{} Chips",
                    "when you play a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_greenroller = {
              
                name = "Green Roller Guy",
                text = {
                    "This Joker gains {C:mult}+#2#{} Mult",
                    "when you play a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_pinkroller = {
              
                name = "Pink Roller Guy",
                text = {
                    "This Joker gives {C:money}$#1#{}",
                    "when you play a {C:attention}Straight{}",
                },
            },

            j_pm_sombreroguy = {
              
                name = "Sombrero Guy",
                text = {
                    "Retrigger all other {C:attention}Jokers{}",
                },
            },

            j_pm_shybandit = {
              
                name = "The Shy Bandit",
                text = {
                    "If {C:attention}first hand{} of round has",
                    "only {C:attention}1{} card, {C:green}#2# in #3#{}",
                    "chance to {C:attention}destroy{} that card.",
                    "This gains {X:mult,C:white}X#4#{} Mult and gain {C:money}$#5#{}.",
                    "{C:inactive}Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
            },

            j_pm_goomba = {
              
                name = "Goomba",
                text = {
                    "{C:mult}+5{} Mult",
                },
            },

            j_pm_paragoomba = {
              
                name = "Paragoomba",
                text = {
                    "Gain {C:mult}+10{} Mult",
                    "on a {C:attention}High Card{}",
                },
            },

            j_pm_bonegoomba = {
              
                name = "Bone Goomba",
                text = {
                    "Retrigger the {C:attention}first card{} played",
                    "then give it {C:mult}+8{} Mult",
                },
            },

            j_pm_koopa = {
              
                name = "Koopa Troopa",
                text = {
                    "If played hand contains a {C:attention}#1#{},",
                    "Each card gains {C:chips}+#2#{} bonus chips when scored",
                },
            },

            
            j_pm_paratroop = {
              
                name = "Paratroopa",
                text = {
                    "If played hand contains a {C:attention}#1#{},",
                    "Each card gives {C:mult}+Mult{}",
                    "equal to its total chips",
                },
            },

            j_pm_swoop = {
              
                name = "Swoop",
                text = { 
                    "Each {C:attention}Enhanced card{} played",
                    "gains {C:chips}+#1#{} bonus Chips when scored.",
                    "removes card {C:attention}enhancement{}",
                },
            },

            j_pm_cheep = {
              
                name = "Cheep Cheep",
                text = { 
                    "This Joker gains {C:chips}+#2#{} Chips",
                    "per {C:attention}non-scoring{} card",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
                },
            },

            j_pm_bloop = {
              
                name = "Blooper",
                text = { 
                    "{X:mult,C:white}X#1#{} Mult.",
                    "{C:green}#2# in #3#{} chance to {C:attention}flip{}",
                    "over a card when you play a hand",
                    "{C:inactive}(Every card in hand has a separate chance){}",
                },
            },

            j_pm_fishyboop = {
              
                name = "Spike",
                text = { 
                    "If hand is a {C:attention}#2#{},",
                    "create a {C:attention}Moon{} card.",
                    "{C:inactive}(Must have room){}",
                    "{C:clubs}Clubs{} give {C:money}$#1#{} when scored",
                },
            },

            j_pm_drybones = {
              
                name = "Dry Bones",
                text = { 
                    "{C:attention}Stone Cards{} give {V:1}+#1#{} #2#",
                    "when scored. Prevents {C:red}death{} if chips scored",
                    "are at least {C:attention}50%{} of required chips",
                    "{C:inactive}(#3#){}"
                },
            },

            j_pm_boo = {
              
                name = "Boo",
                text = { 
                    "At end of round, {C:green}#1# in #2#{} chance to",
                    "{C:mult}destroy{} this Joker and make a random",
                    "Joker {C:dark_edition}Negative{}",
                },
            },

            j_pm_rat = {
              
                name = "Scaredy Rat",
                text = { 
                    "{X:chips,C:white}X#1#{} Chips",
                },
            },

            j_pm_ninji = {
              
                name = "Ninji",
                text = { 
                    "Spades give {C:mult}+#1#{} Mult while",
                    "held in hand. If {C:attention}last hand{}",
                    "of round, {X:mult,C:white}X#2#{} Mult instead.",
                },
            },
        
            j_pm_fuzzy = {
              
                name = "Fuzzy",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain {C:mult}+Mult{}",
                    "based on the card's base value.",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_snifit = {
              
                name = "Snifit",
                text = { 
                    "If played hand contains a {C:attention}#1#{},",
                    "gain {C:chips}+#2#{} Chips per card of matching {C:attention}rank{}",
                    "{C:inactive}(Only one rank per hand){}",
                },
            },

            j_pm_greensnifit = {
              
                name = "Green Snifit",
                text = {
                    "Played cards with {C:spades}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_yellowsnifit = {
              
                name = "Yellow Snifit",
                text = {
                    "Played cards with {C:diamonds}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },
            
            j_pm_bluesnifit = {
              
                name = "Blue Snifit",
                text = {
                    "Played cards with {C:clubs}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_pinksnifit = {
              
                name = "Pink Snifit",
                text = {
                    "Played cards with {C:hearts}#2#{} suit",
                    "give {C:mult}+#1#{} Mult when scored",
                },
            },

            j_pm_slurfit = {
              
                name = "Red Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:mult}Mult {C:attention}enhancements{} boosts this card:",
                    "{X:attention,C:white}Mult:{} {C:mult}+#1#{} Mult",
                    "{X:attention,C:white}Glass{} and {X:attention,C:white}Steel:{} {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult and {X:mult,C:white}X#4#{C:inactive} Mult){}",
                },
            },

            j_pm_blueslurfit = {
              
                name = "Blue Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:chips}Chip {C:attention}enhancements{} and {C:attention}editions{} boosts this card:",
                    "{X:attention,C:white}Bonus:{} {C:chips}+#1#{} Chips",
                    "{X:attention,C:white}Stone:{} {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}Foil:{} Multiplies current chip gain by {X:chips,C:white}X#3#{}",
                    "{C:inactive}(Currently {C:chips}+#4#{C:inactive} Chips){}",
                },
            },

            j_pm_yellowslurfit = {
              
                name = "Yellow Slurp Snifit",
                text = {
                    "{X:attention,C:white}All for One{}",
                    "Playing {C:attention}certain enhancements{} boosts this card:",
                    "{X:attention,C:white}Gold:{} {C:mult}+#1#{} Mult and {C:money}$#2#{}",
                    "{X:attention,C:white}Wild:{} {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}Lucky:{} {X:mult,C:white}+X#4#{} Mult when a {C:attention}Lucky{} card triggers",
                    "{C:inactive}(Currently {C:mult}+#5#{C:inactive} Mult, {C:chips}+#6#{C:inactive} Chips, {X:mult,C:white}X#7#{C:inactive} Mult){}",
                },
            },

            j_pm_spikesnif = {
              
                name = "Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                },
            },

            j_pm_greenspikesnif = {
              
                name = "Green Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:spades}#2#{} suit",
                },
            },
            
            j_pm_bluespikesnif = {
              
                name = "Blue Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:clubs}#2#{} suit",
                },
            },

            j_pm_yellowspikesnif = {
              
                name = "Yellow Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:diamonds}#2#{} suit",
                },
            },

            j_pm_pinkspikesnif = {
              
                name = "Pink Spike Snifit",
                text = {
                    "{C:mult}+#1#{} Mult if played", 
                    "hand contains a {C:attention}Flush{}",
                    "and with only {C:hearts}#2#{} suit",
                },
            },

            j_pm_spiny = {

                name = "Spiny",
                text = {
                    "{C:attention}Retrigger{} all cards",
                    "if they are all the same {C:attention}suit{}",
                    "{C:inactive}(Will not always trigger on a Flush!){}",
                },

            },

            j_pm_buzzy = {

                name = "Buzzy Beetle",
                text = {
                    "If played hand is a {C:attention}#1#{},",
                    "{C:attention}retrigger{} each card played",
                },
            },

            j_pm_spiketop = {

                name = "Spike Top",
                text = {
                    "If played hand contains a",
                    "{C:spades}Spade{}, {C:hearts}Heart{}, {C:diamonds}Diamond{}, and a {C:clubs}Club{} card,",
                    "it counts as a {C:attention}#1#{} and gives {X:mult,C:white}X#2#{} Mult",
                },
            },

            j_pm_wrench = {

                name = "Rocky Wrench",
                text = {
                    "Played {C:attention}#2#{} cards give {X:mult,C:white}X#1#{} Mult",
                    "when played. The first card played will", 
                    "become {C:attention}#2#{}",
                },
            },

            j_pm_pokey = {

                name = "Pokey",
                text = {
                    "{C:green}#1# in #2#{} chance to make each card {C:attention}#3#{}",
                    "{C:mult}+#4#{} Mult if hand is {C:attention}#5#{}",
                },
            },

            j_pm_greenpokey = {

                name = "Green Pokey",
                text = {
                    "If any Joker has a {C:green}chance{} to {C:attention}trigger{},",
                    "guarantee the Joker {C:attention}triggers{} if played hand",
                    "contains a {C:attention}#1#{}",
                },
            }, 

            j_pm_bomb = {
              
                name = "Bob-Omb",
                text = { 
                    "{C:mult}+#1#{} Mult.",
                    "Debuffs itself until end of round.",
                },
            },

            j_pm_podoboo = {
              
                name = "Lava Bubble",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}",
                },
            },

            j_pm_fpirplant = {
              
                name = "Fire Pirahna Plant",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random enhancement{}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },

            j_pm_ptooie = {
              
                name = "Ptooie",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random seal{}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },
            
            j_pm_dino = {
              
                name = "Dino Rhino",
                text = { 
                    "If {C:attention}first hand{} is {C:attention}one card{},",
                    "give it a {C:attention}random edition{}",
                    "{C:inactive}(Not including {C:dark_edition}Negative{C:inactive}){}.",
                    "{C:green}#1# in #2#{} chance to {C:mult}destroy{} it instead",
                },
            },

            j_pm_hammerbro = {
              
                name = "Hammer Bro",
                text = { 
                    "Played {C:clubs}#1#{} cards become {C:attention}Steel{} cards",
                    "and give {C:mult}+#2#{} Mult"
                },
            },

            j_pm_boomerbro = {
              
                name = "Boomerang Bro",
                text = { 
                    "Played {C:spades}#1#{} cards retrigger {C:attention}once{}",
                },
            },

            j_pm_firebro = {
              
                name = "Fire Bro",
                text = { 
                    "Played {C:hearts}#2#{} cards give {X:mult,C:white}X#1#{} Mult",
                    "Playing other suits destroys all {C:hearts}#2#{} cards played",
                },
            },

            j_pm_icebro = {
              
                name = "Ice Bro",
                text = { 
                    "Played {C:diamonds}#1#{} cards become {C:attention}Frozen{}",
                    "Gain {C:mult}+#2#{} for each {C:attention}Frozen Card{} in full deck",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    
                },
            },

            j_pm_jugglerbro = {
              
                name = "Juggler Bro",
                text = { 
                    "{C:attention}#1#{} hand size,",
                    "Gain {C:attention}#2#{} hand size each round",
                    "{C:inactive}(Max #3# hand size gain){}",
                },
            },

            j_pm_circusbro = {
              
                name = "Circus Bro",
                text = { 
                    "If played hand contains a {C:attention}#1#{},",
                    "gain {C:mult}+#2#{} Mult per card of matching {C:attention}rank{}",
                    "{C:inactive}(Only one rank per hand){}",
                },
            },

            j_pm_sledgebro = {
              
                name = "Sledge Bro",
                text = { 
                    "Gain {X:mult,C:white}+X#2#{} per {C:attention}Bro{} card you have.",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
            },

            j_pm_magikoopa = {
              
                name = "Magikoopa",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain a {C:purple}Tarot{} card",
                },
            },

            -- Koopalings

            j_pm_kamek = {
              
                name = "Kamek",
                text = { 
                    "If {C:attention}first discard{} is {C:attention}one card{},",
                    "{C:mult}destroy{} it and gain a {C:purple}Spectral{} card",
                    "{C:mult}+#1#{} Discard",
                },
            },

            j_pm_morton = {
              
                name = "Morton",
                text = { 
                    "If hand consists of 5 {C:attention}Stone Cards{},",
                    "it counts as a {C:attention}#1#{} and gives {X:mult,C:white}X#2#{} Mult",
                    "At {C:attention}start of round{}, gain a {C:chips}Tower{}",
                },
            },

            j_pm_iggy = {
              
                name = "Iggy",
                text = { 
                    "On {C:attention}first hand{} of round, {C:mult}destroy{} a",
                    "random card held in hand and gain {X:mult,C:white}+XMult{}",
                    "equal to {C:attention}1/10th{} the card's value",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive}){}",
                },
            },

            j_pm_ludwig = {
              
                name = "Ludwig",
                text = { 
                    "At the end of the {C:attention}Boss Blind{}", 
                    "gain a {C:dark_edition}Negative {C:attention}Ludwig Copy{}",
                    "Gain {X:mult,C:white}+X#2#{} per {C:attention}Ludwig Copy{} you have.",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
            },

            j_pm_ludwigcopy = {
              
                name = "Ludwig Copy",
                text = { 
                    "{C:inactive}Does... nothing?{}",
                },
            },

            j_pm_wendy = {
              
                name = "Wendy",
                text = { 
                    "Create a {C:dark_edition}Negative {C:purple}Jupiter{}", 
                    "at the start of round",
                    "Straights give {X:mult,C:white}+X#2#{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}",
                },
            },

            j_pm_larry = {
              
                name = "Larry",
                text = { 
                    "At the {C:attention}start of round{}, create a random {C:attention}Joker{}",
                    "If current number of Jokers is >= {C:attention}#1#{}, this",
                    "becomes {C:dark_edition}Negative{}",
                },
            },

            j_pm_lemmy = {
              
                name = "Lemmy",
                text = { 
                    "{C:attention}Wild Cards{} cannot be {C:attention}debuffed{}",
                    "When you play an enhanced card, make it a {C:attention}Wild Card{}",
                    "All {C:attention}Wild Cards{} give {C:mult}+#1#{} Mult when played",
                }
            },
            
            j_pm_roy = {
              
                name = "Roy",
                text = { 
                    "Triggering the {C:attention}Boss Blind{} #3# times",
                    "will {C:mult}disable{} it and give {X:mult,C:white}X#1#{} Mult",
                    "for the rest of the round",
                    "{C:inactive}(Triggered {C:attention}#2#{C:inactive} times){}",
                },
            },

            -- Things
            j_pm_fire_extinguisher = {
              
                name = "Fire Extinguisher",
                text = { 
                    "{C:red}Disable{} this if it's the leftmost {C:attention}Joker",
                    "If you {C:red}destroy{} a card, make a {C:attention}copy{}", 
                    "of it in your hand",
                },
            },

            j_pm_fan = {
              
                name = "Fan",
                text = { 
                    "Randomize the {C:attention}enhancements{} of {C:attention}played cards{}",
                    "Gains {C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult for each {C:attention}enhanced{}",
                    "card in your full deck",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips and {C:mult}+#4#{C:inactive{} Mult){}",
                },
            },

            j_pm_plunger = {
              
                name = "Plunger",
                text = {
                    "{C:attention}Flushes{} can be played with 3 cards",
                    "This gains {C:mult}+#1#{} Mult per card",
                    "not of the same suit in a {C:attention}Flush{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                },
            },

            j_pm_lemon = {
              
                name = "Lemon",
                text = { 
                    "If {C:attention}played hand{} contains a {C:money}Gold Card{},",
                    "convert all non-{C:money}Gold Cards{} into {C:money}Gold{}",
                    "Gain {C:money}$#1#{} per card {C:attention}converted",
                },
            },

            j_pm_catoluck = {
              
                name = "Cat-O-Luck",
                text = { 
                    "{C:attention}Lucky Cards{} will always give {C:mult}+20{} Mult",
                    "{C:green}#1# in #2#{} chance to make each",
                    "played card {C:attention}Lucky{}",
                },
            },

            j_pm_piggybank = {
              
                name = "Piggy Bank",
                text = { 
                    "Using money will increase the {C:attention}sell value{}",
                    "of this Joker by {C:money}$#1#{}",
                },
            },

            j_pm_bone = {
              
                name = "Bone",
                text = { 
                    "Played face cards become {C:attention}Stone{}",
                    "Each {C:attention}Stone Card{} held in hand give",
                    "{C:chips}+#1#{} Chips",
                },
            },

            j_pm_bottle = {
              
                name = "Bottle Opener",
                text = { 
                    "Booster Packs contain {C:attention}#1#{} extra card",
                    "and give {C:attention}#1#{} extra choice",
                },
            },

            j_pm_icepick = {
              
                name = "Ice Pick",
                text = { 
                    "If {C:attention}first played hand{} contains {C:attention}Frozen Cards{},",
                    "this gains {C:mult}+#1#{} per {C:attention}Frozen Card{}",
                    "and {C:red}shatter{} each {C:attention}Frozen Card{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive{} Mult){}",
                },
            },

            j_pm_balloons = {
              
                name = "Balloons",
                text = { 
                    "This gains a {C:attention}new ability{} at the end of",
                    "{C:attention}#1#{} rounds, up to {C:attention}3{} abilities",
                    "{C:inactive}(Abilities stack){}",
                },
            },

            j_pm_teapot = {
              
                name = "Teapot",
                text = { 
                    "If played hand contains a {C:attention}Flush{},",
                    "{C:green}#1# in #2#{} chance to add {C:mult}+#3#{} Mult",
                    "and {C:red}shatter{} this card"
                },
            },

            j_pm_turnip = {
              
                name = "Turnip",
                text = { 
                    "At the end of {C:attention}each round{}, randomize",
                    "the {C:money}sell value{} of this card",
                    "{C:inactive}(Between {C:money}$#1#{C:inactive} and {C:money}$#2#{C:inactive}){}",
                },
            },

            j_pm_instantcamera = {
              
                name = "Instant Camera",
                text = { 
                    "Played {C:attention}Glass Cards{} no longer shatter",
                    "{C:attention}Glass Cards{} held in hand now have a",
                    "{C:green}#1# in #2#{} chance to {C:red}shatter{} and",
                    "give {X:red,C:white}#3#X{} Mult",
                },
            },

            j_pm_basin = {
              
                name = "Basin",
                text = { 
                    "When you play a {C:attention}Flush{}, {C:green}#1# in #2#{}",
                    "chance to make any card {C:money}Gold{}.",
                    "{X:mult,C:white}+X#3#{} Mult per {C:money}Gold{} card in full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#4#{C:inactive} Mult)",
                },
            },

            j_pm_battery = {
              
                name = "Battery",
                text = { 
                    "{X:mult,C:white}+X#1#{} Mult per played {C:attention}Steel Card{}.", 
                    "Resets if no {C:attention}Steel Card{} is played",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                },
            },

            j_pm_compass = {
              
                name = "Compass",
                text = { 
                    "If {C:attention}played hand{} contains a {C:attention}Steel Card{},",
                    "Convert the rank and suit of all {C:attention}played cards{}",
                    "to that of the leftmost {C:attention}Steel Card{}",
                },
            },

            j_pm_cork = {
              
                name = "Cork",
                text = { 
                    "{C:red}Disables{} Boss Blinds and prevents",
                    "{C:red}death{} if scored chips are",
                    "at least {C:attention}50%{} of required chips",
                    "{C:inactive}(#1#){}",
                },
            },

            j_pm_washing = {
              
                name = "Washing Machine",
                text = { 
                    "If {C:attention}played hand{} contains a {C:attention}Flush{},",
                    "convert the {C:attention}rank{} of all played cards to {C:attention}#1#{}",
                    "{C:inactive}(Rank chosen upon creation){}",
                },
            },

            j_pm_lightbulb = {
              
                name = "Lightbulb",
                text = { 
                    "{C:attention}Steel Cards{} become {C:money}Gold{} when played",
                    "and give {C:money}$#1#{}. {C:money}Gold Cards{} become {C:attention}Steel{}",
                    "and gain {X:mult,C:white}+X#2#{} Mult when held in hand",
                },
            },

            j_pm_sapp = {
              
                name = "Salt and Pepper",
                text = { 
                    "Played {C:spades}#1#{} cards give {C:mult}+#5#{} Mult",
                    "Played {C:attention}Stone Cards{} give {C:chips}+#4#{} Chips",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips and {C:mult}+#3#{C:inactive} Mult){}",
                },
            },

            j_pm_grill = {
              
                name = "Charcoal Grill",
                text = { 
                    "If first hand has a max of {C:attention}#1#{} cards,",
                    "increase the {C:attention}ranks{} of each played card.", 
                    "If a card is an {C:attention}Ace{},",
                    "make it a {C:attention}Stone Card{} instead",
                },
            },

            j_pm_megaphone = {
              
                name = "Megaphone",
                text = { 
                    "Retrigger the Joker to the",
                    "{C:attention}right #1#{} times",
                },
            },

            j_pm_hairdryer = {
              
                name = "Hair Dryer",
                text = { 
                    "Destroying cards gives {C:money}$#1#{}. If {C:attention}first discard{}",
                    "has only {C:attention}one card{}, {C:red}destroy{} it and this",
                    "gains {X:mult,C:white}+X#2#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                },
            },

            j_pm_magnify = {
              
                name = "Magnifying Glass",
                text = { 
                    "{C:attention}Glass Cards{} now give {X:mult,C:white}X#1#{} Mult",
                    "but have a {C:green}#2# in #3#{} chance to break",
                },
            },

            j_pm_hammer = {
              
                name = "Claw Hammer",
                text = { 
                    "{C:attention}Stone Cards{} become {C:attention}Steel{} after scoring",
                    "Gain {X:mult,C:white}+X#2#{} Mult per {C:attention}Steel Card{} in full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                },
            },

            j_pm_recorder = {
              
                name = "Recorder",
                text = { 
                    "Sell this card to make a copy of the",
                    "leftmost Joker with {C:dark_edition}Replica{}",
                },
            },

            j_pm_discoball = {
              
                name = "Disco Ball",
                text = { 
                    "{C:attention}Glass Cards{} have a {C:green}#1# in #2#{}",
                    "chance to become {C:dark_edition}Polychrome{}.", 
                    "At the start of the round, gain a {C:attention}Justice{} card",
                },
            },

            j_pm_huey = {
              
                name = "Huey",
                text = { 
                    "{V:1}#1#{} give {X:mult,C:white}X#2#{} and cannot be {C:red}debuffed{}.",
                    "At the start of the round, gain {C:attention}#3#{}.",
                    "{C:inactive}(Suit changes to suit with most cards in full deck){}",
                },
            },

        },
        Other={
            -- STICKERS
            pm_drained = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{} for {C:attention}#1#{} rounds",
                    "{C:inactive}(What happens when a creature loses its colo(u)r){}",
                },
            },

            pm_monochrome = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{}. Playing {C:attention}#1# {V:1}#2#{}",
                    "will remove this sticker", 
                },
            },

            -- INFO CENTERS
            pm_wip = {
                name = "WIP",
                text = {
                    "This Joker {C:red}does not work{}", 
                    "or is {C:red}not currently implemented!{}",
                },
            },

            pm_slurpforone = {
                name = "All for One",
                text = {
                    "This Joker gets {C:red}debuffed{} with",
                    "other {C:attention}Slurping{} cards",
                },
            },

            pm_slurp = {
                name = "Slurping Card",
                text = {
                    "Jokers that have {C:attention}\'Slurp\'{}",
                    "in their name, or have {C:attention}\'slurping\'{} effects",
                },
            },

            pm_low = {
                name = "Low Enhanced Card",
                text = {
                    "{C:attention}Stone, Bonus, Mult, Lucky{}",
                }
            },

            pm_high = {
                name = "High Enhanced Card",
                text = {
                    "{C:attention}Steel, Gold, Glass, Wild{}",
                    "and modded {C:attention}enhanced cards{}",
                }
            },

            pm_red = {
                name = "Red Balloon",
                text = {
                    "Retrigger each played {C:hearts}Heart{} card",
                }
            },

            pm_blue = {
                name = "Blue Balloon",
                text = {
                    "Gain a {C:green}random {C:purple}Planet{} card",
                    "at the end of the round",
                    "{C:inactive}(Prioritizes the last played hand){}",
                }
            },

            pm_yellow = {
                name = "Yellow Balloon",
                text = {
                    "Played {C:diamonds}Diamond{} cards",
                    "give {C:money}$2{} and have a {C:green}chance{}",
                    "to get {C:money}Gold Seals{}",
                }
            },

            pm_monochrome_sticker = {
                name = "Drained",
                text = {
                    "{C:mult}Disabled{}. Playing {C:attention}a specific suit{}",
                    "will remove this sticker", 
                },
            },

            --Booster Packs
            p_pm_bc_basic_1 = {
                name = "Basic Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            p_pm_bc_basic_2 = {
                name = "Basic Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            p_pm_bc_big_1 = {
                name = "Big Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            p_pm_bc_big_2 = {
                name = "Big Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            p_pm_bc_huge_1 = {
                name = "Huge Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            p_pm_bc_huge_2 = {
                name = "Huge Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{C:purple} Battle{} Cards",
                }
            },
            
            --extra descriptions
            pm_extra_mult = {
                text = {
                    "{C:mult}+#1#{} bonus Mult",
                }
            },
        },
        Planet={},
        Spectral={
            c_pm_colorizer = {
                name = "Colorizer",
                text = {
                    "Instantly {C:attention}Colorizes{} all Jokers,",
                    "removing the {C:attention}Drained{} status",
                }
            },

            c_pm_replicator = {
                name = "Replicator",
                text = {
                    "Create a copy of a {C:attention}random{}",
                    "Joker with {C:dark_edition}Replica{}",
                }
            },
        },
        Stake={},
        Tag={},
        Tarot={
            c_pm_blackpaint = {
                name = "Black Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{}",
                }
            },

            c_pm_bluepaint = {
                name = "Blue Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:clubs}#1#{}",
                }
            },

            c_pm_yellowpaint = {
                name = "Yellow Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{}",
                }
            },

            c_pm_redpaint = {
                name = "Red Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:hearts}#1#{}",
                }
            },

            c_pm_orangepaint = {
                name = "Orange Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_greenpaint = {
                name = "Green Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:diamonds}#1#{} or {C:clubs}#2#{}",
                }
            },

            c_pm_purplepaint = {
                name = "Purple Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:clubs}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_pinkpaint = {
                name = "Pink Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:hearts}#2#{}",
                }
            },

            c_pm_navypaint = {
                name = "Navy Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:clubs}#2#{}",
                }
            },

            c_pm_lemonpaint = {
                name = "Lemon Paint",
                text = {
                    "{C:attention}Colorizes{} all {C:attention}Drained{} Jokers",
                    "that require {C:spades}#1#{} or {C:diamonds}#2#{}",
                    "{s:0.9,C:inactive}(A faint lemony scent wafts...){}",
                }
            },

        },
        Voucher={},
        pm_BattleCard={
            c_pm_one_up = {
                name = "1-UP Mushroom",
                text = {
                    "Gain {C:blue}+#1#{} hands on {C:red}death{},",
                    "{C:red}self-destructs{}",
                }
            },

            c_pm_mushroom = {
                name = "Mushroom",
                text = {
                    "{C:blue}+#1#{} hand",
                }
            },

            c_pm_bigmushroom = {
                name = "Big Mushroom",
                text = {
                    "{C:blue}+#1#{} hands",
                }
            },

            c_pm_megamushroom = {
                name = "Mega Mushroom",
                text = {
                    "{C:blue}+#1#{} hands",
                }
            },

            c_pm_fireflower = {
                name = "Fire Flower",
                text = {
                    "{C:red}+#1#{} discard",
                }
            },

            c_pm_bigfireflower = {
                name = "Big Fire Flower",
                text = {
                    "{C:red}+#1#{} discards",
                }
            },

            c_pm_iceflower = {
                name = "Ice Flower",
                text = {
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Frozen{}",
                }
            },

            c_pm_bigiceflower = {
                name = "Big Ice Flower",
                text = {
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Frozen{}",
                }
            },

            c_pm_powblock = {
                name = "POW Block",
                text = {
                    "Select up to {C:attention}#1#{} cards.",
                    "Removes {C:attention}card enhancements{}",
                    "and gives {C:money}$#2#{} per enhancement removed",
                    "{C:red}Destroys{} non-enhanced cards",
                }
            },

            c_pm_tail = {
                name = "Tail",
                text = {
                    "Switches the {C:attention}rank{} of",
                    "two selected cards",
                }
            },

            c_pm_spikehat = {
                name = "Spike Helmet",
                text = {
                    "{C:red}Disables{} the current Boss Blind",
                }
            },

            c_pm_frogsuit = {
                name = "Frog Suit",
                text = {
                    "Switches the {C:attention}suit{} of",
                    "two selected cards",
                }
            },

            c_pm_wojump = {
                name = "Worn-Out Jump",
                text = {
                    "{C:green}#2# in #3#{} chance to {C:attention}increase",
                    "{C:attention}#1#{} selected card's rank by {C:attention}#4#{}",
                }
            },

            c_pm_wojump3 = {
                name = "Worn-Out Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_wojump5 = {
                name = "Worn-Out Jump x5",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_jump = {
                name = "Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_jump2 = {
                name = "Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_jump3 = {
                name = "Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigjump = {
                name = "Big Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_bigjump2 = {
                name = "Big Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugejump = {
                name = "Huge Jump",
                text = {
                    "{C:attention}Increases #1#{} selected card's rank by {C:attention}#2#{}",
                }
            },

            c_pm_linejump = {
                name = "Line Jump",
                text = {
                    "Creates a mini-{C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_biglinejump = {
                name = "Big Line Jump",
                text = {
                    "Creates a mini-{C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_hugelinejump = {
                name = "Huge Line Jump",
                text = {
                    "Creates a {C:attention}Straight{} out of {C:attention}#1#{}",
                    "selected cards",
                    "{C:inactive}(Prioritizes descending Straights){}",
                }
            },

            c_pm_hopslipper = {
                name = "Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hopslipper2 = {
                name = "Hopslipper x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hopslipper3 = {
                name = "Hopslipper x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighopslipper = {
                name = "Big Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hugehopslipper = {
                name = "Huge Hopslipper",
                text = {
                    "{C:chips}+#2#{} Bonus Chips on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_ironjump = {
                name = "Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_ironjump2 = {
                name = "Iron Jump x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_ironjump3 = {
                name = "Iron Jump x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigironjump = {
                name = "Big Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_hugeironjump = {
                name = "Huge Iron Jump",
                text = {
                    "Changes the {C:attention}suit{} of all cards held in",
                    "hand to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_spinjump = {
                name = "Spin Jump",
                text = {
                    "Changes the {C:attention}rank{} of the {C:attention}#1#{}",
                    "selected cards to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_bigspinjump = {
                name = "Big Spin Jump",
                text = {
                    "Changes the {C:attention}rank{} of all cards held in",
                    "hand to that of the {C:attention}leftmost{} card",
                }
            },

            c_pm_wohammer = {
                name = "Worn-Out Hammer",
                text = {
                    "{C:green}#2# in #3#{} chance to {C:attention}decrease{}",
                    "{C:attention}#1#{} selected card's rank by {C:attention}#4#{}",
                }
            },

            c_pm_wohammer3 = {
                name = "Worn-Out Hammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_wohammer5 = {
                name = "Worn-Out Hammer x5",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hammer = {
                name = "Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_hammer2 = {
                name = "Hammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hammer3 = {
                name = "Hammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighammer = {
                name = "Big Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#4#{}",
                    "{C:green}#2# in #3#{} chance to be able to {C:attention}use again{}",
                }
            },

            c_pm_bighammer2 = {
                name = "Big Hammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugehammer = {
                name = "Huge Hammer",
                text = {
                    "{C:attention}Decreases #1#{} selected card's rank by {C:attention}#2#{}",
                }
            },

            c_pm_kohammer = {
                name = "KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_bigkohammer = {
                name = "Big KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_hugekohammer = {
                name = "Huge KO Hammer",
                text = {
                    "{C:green}#1# in #2#{} chance to win the Blind.",
                }
            },

            c_pm_eekhammer = {
                name = "Eekhammer",
                text = {
                    "{C:mult}+#2#{} Bonus Mult on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_eekhammer2 = {
                name = "Eekhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_eekhammer3 = {
                name = "Eekhammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bigeekhammer = {
                name = "Big Eekhammer",
                text = {
                    "{C:mult}+#2#{} Bonus Mult on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_bigeekhammer2 = {
                name = "Big Eekhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hugeeekhammer = {
                name = "Huge Eekhammer",
                text = {
                    "{X:mult,C:white}+X#2#{} Bonus {X:mult,C:white}XMult{} on", 
                    "{C:attention}#1#{} selected card",
                    "{C:inactive}(Has {C:attention}#3#{C:inactive} uses left){}",
                }
            },

            c_pm_hurlhammer = {
                name = "Hurlhammer",
                text = {
                    "{C:green}#2# in #3#{} chance to make up to {C:attention}#1#{}",
                    "selected cards {C:attention}Aces{}",
                }
            },

            c_pm_hurlhammer2 = {
                name = "Hurlhammer x2",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_hurlhammer3 = {
                name = "Hurlhammer x3",
                text = {
                    "Gain {C:attention}#1#{C:dark_edition} Negative{} copies",
                    "of {C:attention}#2#{}",
                }
            },

            c_pm_bighurlhammer = {
                name = "Big Hurlhammer",
                text = {
                    "{C:green}#2# in #3#{} chance to make up to {C:attention}#1#{}",
                    "selected cards {C:attention}Aces{}",
                }
            },

            c_pm_hugehurlhammer = {
                name = "Huge Hurlhammer",
                text = {
                    "Makes up to {C:attention}#1#{} selected cards {C:attention}Aces{}",
                }
            },
            c_pm_blazehammer = {
                name = "Blazehammer",
                text = {
                    "{C:red}Destroys{} up to {C:attention}#1#{} selected cards",
                    "If you select {C:attention}#1#{} cards, gain {C:money}$#2#{}",
                }
            },
        },
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={
            pm_drained_ex = "Slurped!",
            pm_upgraded = "Upgraded!",
            pm_again_ex = "Sombrero!",
            pm_bandit = "Stolen!",
            pm_again = "Again!",
            pm_spiked = "Spike!",
            pm_haunt = "Boo!",
            pm_active = "Active!",
            pm_pokeyed = "Bloom!",
            pm_burned = "Burned!",
            pm_magic = "Abracadabra!",
            pm_wild = "Wild!",
            pm_zapped = "Shocked!",
            pm_lost = "Streak Lost!",
            pm_lemony = "Squeezed!",
            pm_cooked = "Seared!",
            pm_burnt = "Burnt!",
            pm_magnified = "Magnified!",
            pm_colorized = "Colorized!",
            pm_ice_spear = "Shattered!",
            pm_KO = "OHKO!",
            pm_easter_egg = "Lucky!",

            -- Dry Bones
            pm_chips = "Chips",
            pm_mult = "Mult",
            pm_dry = "1-UP Active!",
            pm_dead = "Death Prevented!",

            -- Rarities
            k_pm_thing = "Thing",

            -- Booster Pack Label
            pm_battle_card_booster = "Battle Card Pack",
            pm_battle_card = "Battle Card",

            -- Mod Config Settings
            pm_settings_papermario_only = "Only PM Jokers?",
            pm_settings_things_added = "Things Allowed?",
            pm_settings_bc_added = "Battle Cards Allowed?",
            pm_settings_things_rarity = "Thing Weight?",
            pm_settings_bc_rarity = "Battle Card Weight?",
            pm_settings_drained_rarity = "Drained Status Weight?",
            pm_settings_header_norequired = "Config Options:",
            pm_settings_header_required = "Config Options (Requires Restart):",
            pm_settings_reset = "Reset Config",
        },
        high_scores={},
        labels={
            -- Rarities
            k_pm_thing = "Thing",

            -- Editions
            pm_replica = "Replica",
            
            -- Stickers
            pm_drained = "Drained",
            pm_monochrome = "Drained",
        },
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={
            a_xchips = {"X#1# Chips"},
        },
        v_text={},
    },
}