SMODS.Atlas({ key = "bowling",      path = "p_bowling.png",     px = 71,    py = 95 })
SMODS.Atlas({ key = "swatter",      path = "p_swatter.png",     px = 71,    py = 95 })
SMODS.Atlas({ key = "rubberball",   path = "p_rubberball.png",  px = 71,    py = 95 })
SMODS.Atlas({ key = "parachute",    path = "p_parachute.png",   px = 71,    py = 95 })
SMODS.Atlas({ key = "bubblegum",    path = "p_bubblegum.png",   px = 71,    py = 95 })
SMODS.Atlas({ key = "anchor",       path = "p_anchor.png",      px = 71,    py = 95 })
SMODS.Atlas({ key = "cupcake",      path = "p_cupcake.png",     px = 71,    py = 95 })
SMODS.Atlas({ key = "zipper",       path = "p_zipper.png",      px = 71,    py = 95 })
SMODS.Atlas({ key = "plunger",      path = "p_plunger.png",     px = 71,    py = 95 })
SMODS.Atlas({ key = "switch",       path = "p_switch.png",      px = 71,    py = 95 })
--[[ SMODS.Atlas({ key = "question",     path = "p_question.png",    px = 71,    py = 95 }) ]]

SMODS.ConsumableType({
	key = "Powerup",
	primary_colour = G.C.STK.POWERUP,
	secondary_colour = G.C.STK.POWERUP2,
	shop_rate = 4,
	loc_txt = {
		name = "Powerup",
		collection = "Powerup Cards",
	}
})
--[[ 
SMODS.UndiscoveredSprite({
	key = 'Powerup',
	atlas = 'question',
	pos = { x = 0, y = 0 },
	no_overlay = true
}) ]]


function nonCommonSTKJokerList()
	return {
		'j_stk_veryFunny',
		'j_stk_rankingTable',
		'j_stk_plungerface',
		'j_stk_boltrew',
		'j_stk_boltrewGolden',
		'j_stk_aea',
		'j_stk_1010511',
		'j_stk_redface',
		'j_stk_stukroche',
		'j_stk_spyCamera',
		'j_stk_storyMode',
		'j_stk_rhomboor',
		'j_stk_jetbus',
		'j_stk_lolandPranked',
		'j_stk_bobi',
		'j_stk_eatHand',
		'j_stk_starvingToxicant',
		'j_stk_teamGP',
		'j_stk_copeDrink',
		'j_stk_adiumy',
		'j_stk_emule',
		'j_stk_gavroche',
		'j_stk_konqi',
		'j_stk_sara',
		'j_stk_suzanne',
		'j_stk_xue',
		'j_stk_amanda',
		'j_stk_godette',
		'j_stk_pidgin',
		'j_stk_puffy',
		'j_stk_rebby',
		'j_stk_randy',
		'j_stk_tme'
	}
end

SMODS.Consumable({
	key = 'bowling',
	set = 'Powerup',
	atlas = 'bowling',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { max_highlighted = 1 },
	loc_txt = {
		name = "Bowling Ball",
		text = {
			"Create a {C:attention}Straight Flush{} out of the selected card",
			"{C:inactive}(smaller ranks){}",
			'During a blind, increase score requirements by {C:purple}20%{}'
		}
	},

	can_use = function(self, card)
		return #G.hand.highlighted == card.ability.max_highlighted
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_bowling'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		G.E_MANAGER:add_event(Event({
			func = function()
				local suit = G.hand.highlighted[1].base.suit
				local rank = G.hand.highlighted[1].base.value
				if suit == 'Hearts' then suit = 'H' end
				if suit == 'Clubs' then suit = 'C' end
				if suit == 'Diamonds' then suit = 'D' end
				if suit == 'Spades' then suit = 'S' end
				if rank == 'King' then rank = 'K' end
				if rank == 'Queen' then rank = 'Q' end
				if rank == 'Jack' then rank = 'J' end
				if rank == 'Ace' then rank = 'A' end
				if rank == '10' then rank = 'T' end
				--[[ local _first_dissolve = nil ]]
				local new_cards = {}
				local prev_card_rank = rank
				for i = 1, 4 do
					sendDebugMessage(suit .. '_' .. rank, 'test')
					if prev_card_rank ~= '2' then
						if prev_card_rank == 'A' then rank = 'K'
						elseif prev_card_rank == 'K' then rank = 'Q'
						elseif prev_card_rank == 'Q' then rank = 'J'
						elseif prev_card_rank == 'J' then rank = 'T'
						elseif prev_card_rank == 'T' then rank = '9'
						elseif prev_card_rank == '9' then rank = '8'
						elseif prev_card_rank == '8' then rank = '7'
						elseif prev_card_rank == '7' then rank = '6'
						elseif prev_card_rank == '6' then rank = '5'
						elseif prev_card_rank == '5' then rank = '4'
						elseif prev_card_rank == '4' then rank = '3'
						elseif prev_card_rank == '3' then rank = '2'
						end
						local cardKey = suit .. '_' .. rank
						local _card = create_playing_card({front = G.P_CARDS[cardKey]}, G.hand)
						--[[ _card:add_to_deck()
						G.deck.config.card_limit = G.deck.config.card_limit + 1
						table.insert(G.playing_cards, _card)
						G.hand:emplace(_card) ]]
						G.GAME.blind:debuff_card(_card)
						playing_card_joker_effects({true})
						--[[ _card:start_materialize(nil, _first_dissolve) ]]
						--[[ _first_dissolve = true ]]
						--[[ new_cards[#new_cards+1] = _card ]]
						prev_card_rank = rank
					end
				end
				--[[ playing_card_joker_effects(new_cards) ]]
				G.GAME.blind.chips = G.GAME.blind.chips + math.ceil(G.GAME.blind.chips * 0.2)
				G.GAME.blind.chip_text = G.GAME.blind.chips
				return true
			end
		}))
	end,

	loc_vars = function(self, info_queue, card)
		return {  }
	end
})

SMODS.Consumable({
	key = 'swatter',
	set = 'Powerup',
	atlas = 'swatter',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Swatter",
		text = {
			"Rounds current {C:money}${} to closest flat amount of {C:attention}50{}"
		}
	},

	can_use = function(self, card)
		return true
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_swatter'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
			play_sound('timpani')
			card:juice_up(0.3, 0.5)
			local reachValue = math.floor(G.GAME.dollars / 50 + 0.5) * 50
			ease_dollars(reachValue - G.GAME.dollars, true)
			return true end }))
		delay(0.6)
	end,

	loc_vars = function(self, info_queue, card)
		return {  }
	end
})

SMODS.Consumable({
	key = 'rubberball',
	set = 'Powerup',
	atlas = 'rubberball',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { extra = { num = 1, den = 6 } },
	loc_txt = {
		name = "Rubberball",
		text = {
			"{C:green}#1# in #2# chance{} to set {C:edition}polychrome{} on the {C:attention}leftmost joker{}"
		}
	},

	can_use = function(self, card)
		return (G.jokers.cards[1] and ((G.jokers.cards[1].edition and not (G.jokers.cards[1].edition.negative or G.jokers.cards[1].edition.polychrome)) or not G.jokers.cards[1].edition))
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_rubberball'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		if SMODS.pseudorandom_probability(self, "rubberballSeed", card.ability.extra.num, card.ability.extra.den, 'rubberballIdef') then
			G.jokers.cards[1]:set_edition({polychrome = true})
		else
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
				func = function()
					attention_text({
						text = localize('k_nope_ex'),
						scale = 1.3, 
						hold = 1.4,
						major = card,
						backdrop_colour = G.C.STK.POWERUP,
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
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'rubberballIdef')
		return { vars = { num, den }, key = self.key }
	end
})

SMODS.Consumable({
	key = 'parachute',
	set = 'Powerup',
	atlas = 'parachute',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Parachute",
		text = {
			"Destroy all Jokers and create double the amount of {C:attention}Tags{}",
			'{C:inactive}(Usable only outside shop and blind battle){}'
		}
	},

	can_use = function(self, card)
		return ((G.GAME.round_resets.blind_states.Small == 'Select' or G.GAME.round_resets.blind_states.Big == 'Select' or G.GAME.round_resets.blind_states.Boss == 'Select') and #G.jokers.cards > 0)
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_parachute'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		local deletable_jokers = {}
		for k, v in pairs(G.jokers.cards) do
			if not v.ability.eternal then deletable_jokers[#deletable_jokers + 1] = v end
		end
		local _first_dissolve = nil
		G.E_MANAGER:add_event(Event({trigger = 'before', delay = 0.75, func = function()
			for k, v in pairs(deletable_jokers) do
				v:start_dissolve(nil, _first_dissolve)
				_first_dissolve = true
			end
			return true end
		}))
		G.E_MANAGER:add_event(Event({trigger = 'before', delay = 0.4,
			func = function()
				for i = 1, #deletable_jokers * 2 do
					local selected_tag = pseudorandom_element(G.P_TAGS, pseudoseed("create_tag")).key
					local tag = Tag(selected_tag)
					if tag.name == 'Orbital Tag' then
						local _poker_hands = {}
						for k, v in pairs(G.GAME.hands) do
							if v.visible then
								_poker_hands[#_poker_hands + 1] = k
							end
						end
						tag.ability.orbital_hand = pseudorandom_element(_poker_hands, 'parachuteOrbital')
					end
					if tag.name == 'Boss Tag' then
						tag = Tag('tag_negative')
					end
					tag:set_ability()
					add_tag(tag)
				end
				play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
				return true
			end
		}))
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
})

SMODS.Consumable({
	key = 'bubblegum',
	set = 'Powerup',
	atlas = 'bubblegum',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { extra = { cards_drawn = 5 }},
	loc_txt = {
		name = "Bubblegum",
		text = {
			"Draw {C:attention}#1#{} cards into hand"
		}
	},

	can_use = function(self, card)
		return #G.hand.cards > 0
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_bubblegum'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		local hand_space = math.min(#G.deck.cards, 5)
		delay(0.3)
		for i=1, hand_space do --draw cards from deckL
			draw_card(G.deck,G.hand, i*100/hand_space,'up', true)
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.cards_drawn }, key = self.key }
	end
})

SMODS.Consumable({
	key = 'anchor',
	set = 'Powerup',
	atlas = 'anchor',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Anchor",
		text = {
			"Create 2 {C:diamonds}Timewarp Cards{}",
			'{C:inactive}(Needs space){}'
		}
	},

	can_use = function(self, card)
		return #G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_anchor'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		for i = 1, math.min(2, G.consumeables.config.card_limit - #G.consumeables.cards) do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
				func = function()
					if G.consumeables.config.card_limit > #G.consumeables.cards then
						play_sound('timpani')
						local pUp = SMODS.create_card({
							set = 'Timewarp',
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
	key = 'cupcake',
	set = 'Powerup',
	atlas = 'cupcake',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { remove_card = true, max_highlighted = 2 },
	loc_txt = {
		name = "Cupcake",
		text = {
			"{C:attention}Duplicate{} the card on the {C:attention}left{}",
			'{C:purple}Destroy{} the card on the {C:purple}right{}'
		}
	},

	can_use = function(self, card)
		return #G.hand.highlighted == card.ability.max_highlighted
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_cupcake'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		local rightmost = G.hand.highlighted[1]
		for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end end
		for i=1, #G.hand.highlighted do
			G.E_MANAGER:add_event(Event({
				func = function()
					if G.hand.highlighted[i] ~= rightmost then
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						local _card = copy_card(G.hand.highlighted[i], nil, nil, G.playing_card)
						_card:add_to_deck()
						G.deck.config.card_limit = G.deck.config.card_limit + 1
						table.insert(G.playing_cards, _card)
						G.hand:emplace(_card)
						_card:start_materialize(nil, false)
					else
						local _card = G.hand.highlighted[i]
						if _card.ability.name == 'Glass Card' then 
							_card:shatter()
						else
							_card:start_dissolve(nil, false)
						end
						local jokerCalcCard = {}
						jokerCalcCard[1] = _card
						for i = 1, #G.jokers.cards do
							G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = jokerCalcCard})
						end
					end
					return true
				end
			}))
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
})

SMODS.Consumable({
	key = 'zipper',
	set = 'Powerup',
	atlas = 'zipper',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Zipper",
		text = {
			"Create 1 non-common {C:attention}STK Joker{}",
			'{C:inactive}(Needs space){}'
		}
	},

	can_use = function(self, card)
		return #G.jokers.cards < G.jokers.config.card_limit
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_zipper'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		--[[ sendDebugMessage(card.config.center_key, 'test') ]]
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4,
			func = function()
				play_sound('timpani')
				local creatingJ = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					legendary = false,
					skip_materialize = false,
					soulable = false,
					key = pseudorandom_element(nonCommonSTKJokerList(), pseudoseed('zipper'))})
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

SMODS.Consumable({
	key = 'plunger',
	set = 'Powerup',
	atlas = 'plunger',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Plunger",
		text = {
			'{C:attention}Flips{} all cards in hand',
			'Reduces Blind score requirement by {C:purple}50%{}',
		}
	},

	can_use = function(self, card)
		return (G.GAME.round_resets.blind_states.Small == 'Current' or G.GAME.round_resets.blind_states.Big == 'Current' or G.GAME.round_resets.blind_states.Boss == 'Current')
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_plunger'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		for i = 1, #G.hand.cards do
			if G.hand.cards[i].facing == 'front' then
				G.hand.cards[i]:flip()
			end
		end
		G.GAME.blind.chips = G.GAME.blind.chips - math.ceil(G.GAME.blind.chips * 0.5)
		G.GAME.blind.chip_text = G.GAME.blind.chips
		delay(0.6)
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
})

SMODS.Consumable({
	key = 'switch',
	set = 'Powerup',
	atlas = 'switch',
	pos = {x=0, y=0},
	cost = 3,
	discovered = true,
	config = { },
	loc_txt = {
		name = "Switch",
		text = {
			"{C:green}Rerolls{} the shop without cost"
		}
	},

	can_use = function(self, card)
		return G.STATE == G.STATES.SHOP and not (G.STATE == G.STATES.TAROT_PACK or
												G.STATE == G.STATES.BUFFOON_PACK or
												G.STATE == G.STATES.PLANET_PACK or
												G.STATE == G.STATES.SPECTRAL_PACK or
												G.STATE == G.STATES.STANDARD_PACK)
	end,

	use = function(self, card, area)
		G.GAME.last_powerup_timewarp = 'c_stk_switch'
		G.GAME.is_last_powerup_timewarp = 'Powerup'
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.1,
			func = function ()
				local startrerollcost = G.GAME.current_round.reroll_cost
				G.GAME.current_round.reroll_cost = 0
				G.FUNCS.reroll_shop()
				G.GAME.current_round.reroll_cost = startrerollcost
				return true
			end
		}))
		delay(0.6)
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
})