SMODS.Atlas({ key = "sudo",             path = "c_sudo.png",            px = 71,    py = 95 })
SMODS.Atlas({ key = "charger",          path = "c_charger.png",         px = 71,    py = 95 })
SMODS.Atlas({ key = "mini",             path = "c_mini.png",            px = 71,    py = 95 })
SMODS.Atlas({ key = "magnet",           path = "c_magnet.png",          px = 71,    py = 95 })
SMODS.Atlas({ key = "missile",          path = "c_missile.png",         px = 71,    py = 95 })
SMODS.Atlas({ key = "homingMissile",    path = "c_homingMissile.png",   px = 71,    py = 95 })
SMODS.Atlas({ key = "fuzzyBlob",        path = "c_fuzzyBlob.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "silverCoin",       path = "c_silverCoin.png",      px = 71,    py = 95 })
SMODS.Atlas({ key = "goldCoin",         path = "c_goldCoin.png",        px = 71,    py = 95 })
SMODS.Atlas({ key = "banana",           path = "c_banana.png",          px = 71,    py = 95 })

SMODS.ConsumableType({
    key = "Timewarp",
    primary_colour = G.C.STK.TIMEWARP,
    secondary_colour = G.C.STK.TIMEWARP2,
    shop_rate = 1,
    loc_txt = {
        name = "Timewarp",
        collection = "Timewarp Cards",
    }
})
--[[ 
SMODS.UndiscoveredSprite({
    key = 'Powerup',
    atlas = 'question',
    pos = { x = 0, y = 0 },
    no_overlay = true
}) ]]


function timewarpJokerList()
    return {
        'j_stk_geeko',
        'j_stk_bsod',
        'j_stk_gown',
        'j_stk_yeti',
        'j_stk_gooey',
        'j_stk_skirpy',
        'j_stk_penny',
        'j_stk_mrIceBlock',
        'j_stk_eviltux',
        'j_stk_mozilla',
        'j_stk_elephpant',
        'j_stk_beastie',
        'j_stk_beagle',
        'j_stk_herrings',
    }
end

SMODS.Consumable({
    key = 'sudo',
    set = 'Timewarp',
    atlas = 'sudo',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { extra = { min_money = -10, max_money = 30 } },
    loc_txt = {
        name = "Sudo Nitro",
        text = {
            "Earn from {C:money}$#1#{} to {C:money}$#2#{}",
            "Create last used {C:chips}Powerup{} or {C:diamonds}Timewarp{} Card except this one {C:inactive}(#3#){}",
            '{C:inactive}(Needs space){}'
        }
    },

    can_use = function(self, card)
		return true
	end,

    use = function(self, card, area)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                local money = math.max(-G.GAME.dollars, math.random(card.ability.extra.max_money - card.ability.extra.min_money) + card.ability.extra.min_money)
                ease_dollars(money, true)
                return true
            end
        }))
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                if G.consumeables.config.card_limit > #G.consumeables.cards and G.GAME.is_last_powerup_timewarp then
                    local card = create_card(G.GAME.is_last_powerup_timewarp, G.consumeables, nil, nil, nil, nil, G.GAME.last_powerup_timewarp, 'sudo')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                end
                return true
            end
        }))
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.min_money, card.ability.extra.max_money, string.gsub(G.GAME.last_powerup_timewarp or 'c_stk_none', 'c_stk_', "") }, key = self.key }
    end
})

function getHighlightedHandType()
    local poker_hands = evaluate_poker_hand(G.hand.highlighted)
    local text = 'High Card'
    if next(poker_hands["Flush Five"]) then text = "Flush Five"
    elseif next(poker_hands["Flush House"]) then text = "Flush House"
    elseif next(poker_hands["Five of a Kind"]) then text = "Five of a Kind"
    elseif next(poker_hands["Straight Flush"]) then text = "Straight Flush"
    elseif next(poker_hands["Four of a Kind"]) then text = "Four of a Kind"
    elseif next(poker_hands["Full House"]) then text = "Full House"
    elseif next(poker_hands["Flush"]) then text = "Flush";
    elseif next(poker_hands["Straight"]) then text = "Straight"
    elseif next(poker_hands["Three of a Kind"]) then text = "Three of a Kind"
    elseif next(poker_hands["Two Pair"]) then text = "Two Pair"
    elseif next(poker_hands["Pair"]) then text = "Pair"
    elseif next(poker_hands["High Card"]) then text = "High Card"
    end
    return text
end

SMODS.Consumable({
    key = 'charger',
    set = 'Timewarp',
    atlas = 'charger',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Charger",
        text = {
            "Level up highlighted hand"
        }
    },

    can_use = function(self, card)
		return (G.GAME.round_resets.blind_states.Small == 'Current' or
                G.GAME.round_resets.blind_states.Big == 'Current' or
                G.GAME.round_resets.blind_states.Boss == 'Current') and
                #G.hand.highlighted > 0
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_charger'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        card:juice_up(0.3, 0.5)
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(getHighlightedHandType(), 'poker_hands'),chips = G.GAME.hands[getHighlightedHandType()].chips, mult = G.GAME.hands[getHighlightedHandType()].mult, level=G.GAME.hands[getHighlightedHandType()].level})
        level_up_hand(used_tarot, getHighlightedHandType())
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return {  }
    end
})

SMODS.Consumable({
    key = 'mini',
    set = 'Timewarp',
    atlas = 'mini',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Mini Wish",
        text = {
            "Create 2 {C:chips}Powerup{} Cards",
            '{C:inactive}(Needs space){}'
        }
    },

    can_use = function(self, card)
		return #G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_mini'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        for i = 1, math.min(2, G.consumeables.config.card_limit - #G.consumeables.cards) do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
                func = function()
                    if G.consumeables.config.card_limit > #G.consumeables.cards then
                        play_sound('timpani')
                        local pUp = SMODS.create_card({
                            set = 'Powerup',
                            area = G.consumeables,
                            legendary = false,
                            skip_materialize = false,
                            soulable = false})
                        pUp:add_to_deck()
                        G.consumeables:emplace(pUp)
                        card:juice_up(0.3, 0.5)
                    end
                    return true
                end
            }))
        end
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { }
    end
})

SMODS.Consumable({
    key = 'magnet',
    set = 'Timewarp',
    atlas = 'magnet',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Magnet",
        text = {
            "Create a {C:dark_edition}Negative{} copy of a random Joker",
            'Set cash to {C:money}$-20{}'
        }
    },

    can_use = function(self, card)
		return #G.jokers.cards > 0
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_magnet'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3,
            func = function()
                local jokers = {}
                for i=1, #G.jokers.cards do
                    jokers[#jokers+1] = G.jokers.cards[i]
                end
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
                local chosen_joker = pseudorandom_element(jokers, pseudoseed('magnet'))
                local card = copy_card(chosen_joker, nil, nil, nil, nil)
                card:add_to_deck()
                card:set_edition({negative = true})
                G.jokers:emplace(card)
                return true
            end
        }))
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                ease_dollars(-G.GAME.dollars - 20, true)
                return true
            end
        }))
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { }
    end
})

SMODS.Consumable({
    key = 'missile',
    set = 'Timewarp',
    atlas = 'missile',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { remove_card = true, extra = { sealing = 4 } },
    loc_txt = {
        name = "Missile",
        text = {
            "{C:purple}Destroy{} 1 random card",
            "Apply up to #1# random {C:attention}Seals{} on remaining cards",
            '{C:inactive}(Can override){}'
        }
    },

    can_use = function(self, card)
		return #G.hand.cards > 1
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_missile'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        local destroyed_card = pseudorandom_element(G.hand.cards, pseudoseed('random_destroy'))
        local seal_cards = {}
        for i = 1, card.ability.extra.sealing do
            local cardS = pseudorandom_element(G.hand.cards, pseudoseed('missile'))
            if cardS ~= destroyed_card then
                seal_cards[#seal_cards + 1] = cardS
            end
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                if destroyed_card.ability.name == 'Glass Card' then 
                    destroyed_card:shatter()
                else
                    destroyed_card:start_dissolve(nil, false)
                end
                for i = 1, #seal_cards do
                    local sealID = math.random(4)
                    if      sealID == 1 then seal_cards[i]:set_seal('Red', true)
                    elseif  sealID == 2 then seal_cards[i]:set_seal('Blue', true)
                    elseif  sealID == 3 then seal_cards[i]:set_seal('Gold', true)
                    elseif  sealID == 4 then seal_cards[i]:set_seal('Purple', true)
                    end
                end
                return true
            end
        }))
        delay(0.6)
        local jokerCalcCard = {}
        jokerCalcCard[1] = destroyed_card
        for i = 1, #G.jokers.cards do
            G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = jokerCalcCard})
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.sealing }, key = self.key }
    end
})

SMODS.Consumable({
    key = 'homingMissile',
    set = 'Timewarp',
    atlas = 'homingMissile',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { extra = { num = 1, den = 2 } },
    loc_txt = {
        name = "Homing Missile",
        text = {
            "{C:green}#1# in #2# chance{} to {C:purple}destroy{} up to {C:attention}4{} selected cards"
        }
    },

    can_use = function(self, card)
		return #G.hand.highlighted > 0 and #G.hand.highlighted < 5
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_homingMissile'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'

        if SMODS.pseudorandom_probability(self, "homingMissileSeed", card.ability.extra.num, card.ability.extra.den, 'homingMissileIdef') then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function() 
                    for i=1, #G.hand.highlighted do
                        local destroyingCard = G.hand.highlighted[i]
                        if destroyingCard.ability.name == 'Glass Card' then 
                            destroyingCard:shatter()
                        else
                            destroyingCard:start_dissolve(nil, i == 1)
                        end
                        local jokerCalcCard = {}
                        jokerCalcCard[1] = destroyingCard
                        for i = 1, #G.jokers.cards do
                            G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = jokerCalcCard})
                        end
                    end
                    return true
                end
            }))
        else
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
                func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.STK.TIMEWARP,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false,
                        func = function()
                            play_sound('tarot2', 0.76, 0.4);
                            return true
                        end
                    }))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'homingMissileIdef')
        return { vars = { num, den }, key = self.key }
    end
})

SMODS.Consumable({
    key = 'fuzzyBlob',
    set = 'Timewarp',
    atlas = 'fuzzyBlob',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Fuzzy Blob",
        text = {
            "Generate 1 {C:attention}Timewarp Joker{}",
            '{C:inactive}(Needs space){}'
        }
    },

    can_use = function(self, card)
		return #G.jokers.cards < G.jokers.config.card_limit
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_fuzzyBlob'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
			func = function()
				play_sound('timpani')
				local creatingJ = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					legendary = false,
					skip_materialize = false,
					soulable = false,
					key = pseudorandom_element(timewarpJokerList(), pseudoseed('zipper'))})
				creatingJ:add_to_deck()
				creatingJ:start_materialize()
				G.jokers:emplace(creatingJ)
				card:juice_up(0.3, 0.5)
				return true 
			end
		}))
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { }
    end
})

function randomCardFromDeck()
    local cards_id = {}
    for k, v in ipairs(G.playing_cards) do
        local suit = v.base.suit
        local value = v.base.value
        if suit == 'Hearts' then suit = 'H' end
        if suit == 'Clubs' then suit = 'C' end
        if suit == 'Diamonds' then suit = 'D' end
        if suit == 'Spades' then suit = 'S' end
        if value == '10' then value = 'T' end
        if value == 'Jack' then value = 'J' end
        if value == 'Queen' then value = 'Q' end
        if value == 'King' then value = 'K' end
        if value == 'Ace' then value = 'A' end
        cards_id[#cards_id + 1] = suit .. '_' .. value
    end

    return pseudorandom_element(cards_id, pseudoseed('allDeck'))
end
SMODS.Consumable({
    key = 'silverCoin',
    set = 'Timewarp',
    atlas = 'silverCoin',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Silver Coin",
        text = {
            "{C:purple}Destroy{} 1 random card",
            'Create 3 {C:attention}Steel Playing cards{}'
        }
    },

    can_use = function(self, card)
		return #G.hand.cards > 1
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_silverCoin'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        local destroyed_card = pseudorandom_element(G.hand.cards, pseudoseed('random_destroy'))
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                if destroyed_card.ability.name == 'Glass Card' then 
                    destroyed_card:shatter()
                else
                    destroyed_card:start_dissolve(nil, false)
                end
                --[[ Destroyed cards are not computed. ]]
                for i = 1, 3 do
                    local _card = create_playing_card({
                        front = G.P_CARDS[randomCardFromDeck()], 
                        center = G.P_CENTERS.m_steel}, G.hand)
                    playing_card_joker_effects({true})
                end
                return true
            end
        }))
        local jokerCalcCard = {}
        jokerCalcCard[1] = destroyed_card
        for i = 1, #G.jokers.cards do
            G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = jokerCalcCard})
        end
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { }
    end
})

SMODS.Consumable({
    key = 'goldCoin',
    set = 'Timewarp',
    atlas = 'goldCoin',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { },
    loc_txt = {
        name = "Gold Coin",
        text = {
            "{C:purple}Destroy{} 2 random cards",
            'Create 5 {C:attention}Gold Playing cards{}'
        }
    },

    can_use = function(self, card)
		return #G.hand.cards > 2
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_goldCoin'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        local destroyed_cards = {}
        local temp_hand = {}
        for k, v in ipairs(G.hand.cards) do temp_hand[#temp_hand+1] = v end
        table.sort(temp_hand, function (a, b) return not a.playing_card or not b.playing_card or a.playing_card < b.playing_card end)
        pseudoshuffle(temp_hand, pseudoseed('immolate'))

        for i = 1, 2 do destroyed_cards[#destroyed_cards+1] = temp_hand[i] end

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                for j = 1, #destroyed_cards do
                    if destroyed_cards[j].ability.name == 'Glass Card' then 
                        destroyed_cards[j]:shatter()
                    else
                        destroyed_cards[j]:start_dissolve(nil, false)
                    end
                end
                for i = 1, 5 do
                    local _card = create_playing_card({
                        front = G.P_CARDS[randomCardFromDeck()], 
                        center = G.P_CENTERS.m_gold}, G.hand)
                    playing_card_joker_effects({true})
                end
                return true
            end
        }))
        for i = 1, #G.jokers.cards do
            G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed_cards})
        end
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        return { }
    end
})

SMODS.Consumable({
    key = 'banana',
    set = 'Timewarp',
    atlas = 'banana',
    pos = {x=0, y=0},
    cost = 4,
    discovered = true,
    config = { extra = { num = 1, den = 3 } },
    loc_txt = {
        name = "Banana",
        text = {
            "{C:green}#1# in #2# chance{} to create a {C:dark_edition}Negative{} version of",
            "{C:attention}Picked Up A Bit Of A Bomb{}, {C:attention}Anchor{} or {C:attention}Parachute{}"
        }
    },

    can_use = function(self, card)
		return true
	end,

    use = function(self, card, area)
        G.GAME.last_powerup_timewarp = 'c_stk_banana'
        G.GAME.is_last_powerup_timewarp = 'Timewarp'
        if SMODS.pseudorandom_probability(self, "bananaSeed", card.ability.extra.num, card.ability.extra.den, 'bananaIdef') then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
                func = function()
                    play_sound('timpani')
                    card:juice_up(0.3, 0.5)
                    local r = math.random(3)
                    if r == 1 then
                        local _anchor = SMODS.create_card({
                            set = 'Powerup',
                            area = G.consumeables,
                            legendary = false,
                            skip_materialize = false,
                            soulable = false,
                            key = 'c_stk_anchor'})
                        _anchor:add_to_deck()
                        G.consumeables:emplace(_anchor)
                        _anchor:set_edition({negative = true})
                    elseif r == 2 then
                        local _parachute = SMODS.create_card({
                            set = 'Powerup',
                            area = G.consumeables,
                            legendary = false,
                            skip_materialize = false,
                            soulable = false,
                            key = 'c_stk_parachute'})
                        _parachute:add_to_deck()
                        G.consumeables:emplace(_parachute)
                        _parachute:set_edition({negative = true})
                    else
                        local _bomb = SMODS.create_card({
                            set = 'Joker',
                            area = G.jokers,
                            legendary = false,
                            skip_materialize = false,
                            soulable = false,
                            key = 'j_stk_pickedUpBomb'})
                        _bomb:add_to_deck()
                        _bomb:start_materialize()
                        G.jokers:emplace(_bomb)
                        _bomb:set_edition({negative = true})
                    end
                    return true
                end
            }))
        end
        delay(0.6)
    end,

    loc_vars = function(self, info_queue, card)
        local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'bananaIdef')
        return { vars = { num, den }, key = self.key }
    end
})