
-- you can have shared helper functions
function shakecard(self) --visually shake a card
	G.E_MANAGER:add_event(Event({
		func = function()
			self:juice_up(0.5, 0.5)
			return true
		end
	}))
end

function return_JokerValues() -- not used, just here to demonstrate how you could return values from a joker
	if context.joker_main and context.cardarea == G.jokers then
		return {
			chips = card.ability.extra.chips,       -- these are the 3 possible scoring effects any joker can return.
			mult = card.ability.extra.mult,         -- adds mult (+)
			x_mult = card.ability.extra.x_mult,     -- multiplies existing mult (*)
			card = self,                            -- under which card to show the message
			colour = G.C.CHIPS,                     -- colour of the message, Balatro has some predefined colours, (Balatro/globals.lua)
			message = localize('k_upgrade_ex'),     -- this is the message that will be shown under the card when it triggers.
			extra = { focus = self, message = localize('k_upgrade_ex') }, -- another way to show messages, not sure what's the difference.
		}
	end
end

function listSTKJokers()
	return {
		'j_stk_giftBox',
		'j_stk_youNeedToTold',
		'j_stk_oneShutUp',
		'j_stk_RTTrack',
		'j_stk_owalkaz',
		'j_stk_checklineExploit',
		'j_stk_ydunocan',
		'j_stk_lagForest',
		'j_stk_pickedUpBomb',
		'j_stk_noAllOnMult',
		'j_stk_howAreHippies',
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
		'j_stk_pepper',
		'j_stk_hexley',
		'j_stk_kiki',
		'j_stk_wilber',
		'j_stk_rebby',
		'j_stk_randy',
		'j_stk_tme'
	}
end

function listTimwarpJokers()
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
		'j_stk_beagle'
	}
end

SMODS.Atlas({ key = "rhomboor",         path = "j_rhomboor.png",			px = 71,    py = 95 })
SMODS.Atlas({ key = "veryFunny",        path = "j_veryFunny.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "youNeedToTold",    path = "j_youNeedToTold.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "jetbus",           path = "j_jetbus.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "oneShutUp",        path = "j_oneShutUp.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "RTTrack",          path = "j_RTTrack.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "rankingTable",     path = "j_rankingTable.png",        px = 71,    py = 95 })
SMODS.Atlas({ key = "plungerface",      path = "j_plungerface.png",         px = 71,    py = 95 })
SMODS.Atlas({ key = "lolandPranked",    path = "j_lolandPranked.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "bobi",             path = "j_bobi.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "owalkaz",          path = "j_owalkaz.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "boltrew",          path = "j_boltrew.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "boltrewGolden",    path = "j_boltrewGolden.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "eatHand",          path = "j_eatHand.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "aea",              path = "j_aea.png",                 px = 71,    py = 95 })
SMODS.Atlas({ key = "starvingToxicant", path = "j_starvingToxicant.png",    px = 71,    py = 95 })
SMODS.Atlas({ key = "checklineExploit", path = "j_checklineExploit.png",    px = 71,    py = 95 })
SMODS.Atlas({ key = "teamGP",           path = "j_teamGP.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "ydunocan",         path = "j_ydunocan.png",            px = 71,    py = 95 })
SMODS.Atlas({ key = "lagForest",        path = "j_lagForest.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "1010511",          path = "j_1010511.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "redface",          path = "j_redface.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "pickedUpBomb",     path = "j_pickedUpBomb.png",        px = 71,    py = 95 })
SMODS.Atlas({ key = "copeDrink",        path = "j_copeDrink.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "stukroche",        path = "j_stukroche.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "spyCamera",        path = "j_spyCamera.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "mimiz",            path = "j_mimiz.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "noAllOnMult",      path = "j_noAllOnMult.png",         px = 71,    py = 95 })
SMODS.Atlas({ key = "storyMode",        path = "j_storyMode.png",           px = 71,    py = 95 })
SMODS.Atlas({ key = "rebby",            path = "j_rebby.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "randy",            path = "j_randy.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "howAreHippies",    path = "j_howAreHippies.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "expandNatural",    path = "j_expandNatural.png",       px = 71,    py = 95 })
SMODS.Atlas({ key = "useOldCode",       path = "j_useOldCode.png",          px = 71,    py = 95 })
SMODS.Atlas({ key = "books",            path = "j_books.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "giftBox",          path = "j_giftBox.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "adiumy",           path = "j_adiumy.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "amanda",           path = "j_amanda.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "godette",          path = "j_godette.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "emule",            path = "j_emule.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "gavroche",         path = "j_gavroche.png",            px = 71,    py = 95 })
SMODS.Atlas({ key = "gnu",              path = "j_gnu.png",                 px = 71,    py = 95 })
SMODS.Atlas({ key = "hexley",           path = "j_hexley.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "kiki",             path = "j_kiki.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "konqi",            path = "j_konqi.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "nolok",            path = "j_nolok.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "pidgin",           path = "j_pidgin.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "puffy",            path = "j_puffy.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "pepper",           path = "j_pepper.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "sara",             path = "j_sara.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "suzanne",          path = "j_suzanne.png",             px = 71,    py = 95 })
SMODS.Atlas({ key = "tux",              path = "j_tux.png",                 px = 71,    py = 95 })
SMODS.Atlas({ key = "wilber",           path = "j_wilber.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "xue",              path = "j_xue.png",                 px = 71,    py = 95 })
SMODS.Atlas({ key = "tme",              path = "j_tme.png",                 px = 71,    py = 95 })
SMODS.Atlas({ key = "geeko",            path = "j_geeko.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "bsod",             path = "j_bsod.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "gown",             path = "j_gown.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "yeti",             path = "j_yeti.png",                px = 71,    py = 95 })
SMODS.Atlas({ key = "gooey",            path = "j_gooey.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "skirpy",           path = "j_skirpy.png",              px = 71,    py = 95 })
SMODS.Atlas({ key = "penny",            path = "j_penny.png",               px = 71,    py = 95 })
SMODS.Atlas({ key = "mrIceBlock",		path = "j_mrIceBlock.png",			px = 71,    py = 95 })
SMODS.Atlas({ key = "eviltux",			path = "j_eviltux.png",				px = 71,    py = 95 })
SMODS.Atlas({ key = "mozilla",			path = "j_mozilla.png",				px = 71,    py = 95 })
SMODS.Atlas({ key = "elephpant",		path = "j_elephpant.png",			px = 71,    py = 95 })
SMODS.Atlas({ key = "beastie",			path = "j_beastie.png",				px = 71,    py = 95 })
SMODS.Atlas({ key = "beagle",			path = "j_beagle.png",				px = 71,    py = 95 })
SMODS.Atlas({ key = "herrings",			path = "j_herrings.png",			px = 71,    py = 95 })

--youNeedToTold
SMODS.Joker{
	key = "youNeedToTold",
	config = { extra = { x_mult = 1, x_mult_mod = 0.1 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	blueprint_compat = true,
	eternal_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'youNeedToTold',

	calculate = function(self, card, context)
		if context.remove_playing_cards and context.removed then
			if not context.blueprint then
				local numDest = #context.removed
				if numDest > 0 then
					card.ability.extra.x_mult = card.ability.extra.x_mult + (card.ability.extra.x_mult_mod * numDest)

					return {                             -- shows a message under the specified card (card) when it triggers, k_upgrade_ex is a key in the localization files of Balatro
						extra = {focus = card, message = localize('k_upgrade_ex')},
						card = card,
						colour = G.C.RED
					}
				end
			end
		end

		if context.joker_main and context.cardarea == G.jokers then
			return {                                     
				x_mult = card.ability.extra.x_mult,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.x_mult_mod }, key = self.key }
	end
}

--oneShutUp
SMODS.Joker{
	key = "oneShutUp",
	config = { extra = { money = 10 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'oneShutUp',

	calc_dollar_bonus = function(self, card)
		if G.GAME.current_round.hands_played == 1 then
			return card.ability.extra.money
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money }, key = self.key }
	end
}

--RTTrack
SMODS.Joker{
	key = "RTTrack",
	config = { extra = { chips = 15, mult = 5 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 3,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'RTTrack',

	 calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			if (context.other_card:get_id() == 1 or 
				context.other_card:get_id() == 14 or 
				context.other_card:get_id() == 2 or 
				context.other_card:get_id() == 3 or 
				context.other_card:get_id() == 5 or 
				context.other_card:get_id() == 8) then
				return {
					mult = card.ability.extra.mult,
					card = card
				}
			end
			if (context.other_card:get_id() == 4 or 
				context.other_card:get_id() == 6 or 
				context.other_card:get_id() == 7) then
				return {
					chips = card.ability.extra.chips,
					card = card
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult  }, key = self.key }
	end
}

--checklineExploit
SMODS.Joker{
	key = "checklineExploit",
	config = { extra = { chips_mod = 50 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 2,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'checklineExploit',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				chips = card.ability.extra.chips_mod * G.GAME.skips,
				colour = G.C.CHIPS
			}
		end
		if context.skip_blind and not context.blueprint then
			shakecard(card)
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips_mod * G.GAME.skips, card.ability.extra.chips_mod }, key = self.key }
	end
}

--ydunocan
SMODS.Joker{
	key = "ydunocan",
	config = { extra = { chips = 0, chips_mod = 2 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'ydunocan',

	calculate = function(self, card, context)
		if context.other_drawn and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_mod * #context.other_drawn
			return {                             -- shows a message under the specified card (card) when it triggers, k_upgrade_ex is a key in the localization files of Balatro
				extra = {focus = card, message = localize('k_upgrade_ex')},
				card = card,
				colour = G.C.CHIPS
			}
		end

		if context.joker_main and context.cardarea == G.jokers then
			return {                                     -- returns total chips from joker to be used in scoring, no need to show message in joker_main phase, game does it for us.
				chips = card.ability.extra.chips, 
				colour = G.C.CHIPS
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.chips_mod }, key = self.key }
	end
}

--lagForest
SMODS.Joker{
	key = "lagForest",
	config = { extra = { x_mult_mod = 0.5, hands_needed = 6 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'lagForest',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			local handsNeeded   = card.ability.extra.hands_needed
			local xMultMod      = card.ability.extra.x_mult_mod
			local timesPlayed   = math.floor(G.GAME.hands[context.scoring_name].played / handsNeeded)
			local x_mult_given  = 1 + xMultMod * timesPlayed
			return {
				x_mult = x_mult_given,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult_mod, card.ability.extra.hands_needed }, key = self.key }
	end
}

--pickedUpBomb
SMODS.Joker{
	key = "pickedUpBomb",
	config = { extra = { mult_mod = 1, mult = 30 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'pickedUpBomb',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers and card.ability.extra.mult > 0 then
			return {
				mult = card.ability.extra.mult,
				colour = G.C.RED
			}
		end

		if context.before and not context.blueprint then
			local reduced = 0
			for i = 1, #context.full_hand do
				if not context.full_hand[i]:is_face() then
					reduced = reduced + 1
					card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_mod
				end
			end
			if reduced > 0 then
				if card.ability.extra.mult <= 0 then
					card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Boom!", colour = G.C.RED})
					G.E_MANAGER:add_event(Event({
						func = function()
							play_sound('tarot1')
							card.T.r                        = -0.2
							card:juice_up(0.3, 0.4)
							card.states.drag.is             = true
							card.children.center.pinch.x    = true
							G.E_MANAGER:add_event(Event({
								trigger     = 'after',
								delay       = 0.3,
								blockable   = false,
								func        = function()
									G.jokers:remove_card(card)
									card:remove()
									card = nil
									return true
								end
							})) 
							return true
						end
					}))
					return { }
				else
					return {
						message = localize{type='variable',key='a_mult_minus',vars={reduced}},
						colour = G.C.RED,
						card = card
					}
				end
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.mult_mod }, key = self.key }
	end
}

--noAllOnMult
SMODS.Joker{
	key = "noAllOnMult",
	config = { extra = { x_chips = 1, x_chips_mod = 0.1, num = 1, den = 4 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'noAllOnMult',

	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.x_chips = 1 + card.ability.extra.x_chips_mod * G.GAME.round_resets.ante
	end,

	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card.ability.name == 'Wild Card' then
				if SMODS.pseudorandom_probability(self, "noAllOnMultSeed", card.ability.extra.num, card.ability.extra.den, 'noAllOnMultIdef') then
					return {
						x_chips = card.ability.extra.x_chips,
						colour = G.C.CHIPS,
						card = card
					}
				end
			end
		end
		if context.ante_change then
			card.ability.extra.x_chips = 1 + card.ability.extra.x_chips_mod * G.GAME.round_resets.ante
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'noAllOnMultIdef')
		return { vars = { card.ability.extra.x_chips, card.ability.extra.x_chips_mod, num, den }, key = self.key }
	end
}

--giftBox
SMODS.Joker{
	key = "giftBox",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'giftBox',

	calculate = function(self, card, context)
		if context.selling_self and not context.blueprint then
			if #G.jokers.cards <= G.jokers.config.card_limit then
				local creatingJ = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					legendary = false,
					skip_materialize = false,
					soulable = false,
					key = pseudorandom_element(listSTKJokers(), pseudoseed('giftBox'))})
				creatingJ:add_to_deck()
				creatingJ:start_materialize()
				G.jokers:emplace(creatingJ)
			else
				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
			end

			if #G.consumeables.cards < G.consumeables.config.card_limit then
				local creatingP = SMODS.create_card({
					set = 'Powerup',
					area = G.consumeables,
					legendary = false,
					skip_materialize = false,
					soulable = false})
				creatingP:add_to_deck()
				G.consumeables:emplace(creatingP)
			else
				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
			end
			--[[ sendDebugMessage(card.config.center_key, 'test') ]]
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--veryFunny
SMODS.Joker{
	key = "veryFunny",
	config = { repetitions = 3 },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'veryFunny',

	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and (
			context.other_card:get_id() == 1 or 
			context.other_card:get_id() == 14 or 
			context.other_card:get_id() == 2 or 
			context.other_card:get_id() == 3) then
			return {
				message = localize('k_again_ex'),
				repetitions = card.ability.repetitions,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--rankingTable
SMODS.Joker{
	key = "rankingTable",
	config = { extra = { chips = 0, chips_mod = 350, chance = 900, perchance = 7000 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'rankingTable',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers then
			if not context.blueprint then
				if (context.scoring_name == 'Straight' or
					context.scoring_name == 'Straight Flush' or
					context.scoring_name == 'Royal Flush') then
					if SMODS.pseudorandom_probability(self, "rankingTableSeed", card.ability.extra.chance, card.ability.extra.perchance, 'rankingTableIdef') then
						card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_mod
						return {                             -- shows a message under the specified card (card) when it triggers, k_upgrade_ex is a key in the localization files of Balatro
							extra = {focus = card, message = localize('k_upgrade_ex')},
							card = card,
							colour = G.C.CHIPS
						}
					end
				end
			end
		end
		if context.joker_main and context.cardarea == G.jokers then
			return {
				chips = card.ability.extra.chips,
				colour = G.C.CHIPS
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.chance, card.ability.extra.perchance, 'rankingTableIdef')
		return { vars = { num, den, card.ability.extra.chips, card.ability.extra.chips_mod }, key = self.key }
	end
}

--plungerface
SMODS.Joker{
	key = "plungerface",
	config = { extra = { mult_mod = 0.75, chance = 1, perchance = 4 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'plungerface',

	calculate = function(self, card, context)
		if not context.end_of_round then
			if context.cardarea == G.hand and context.other_card then
				if not context.blueprint then
					shakecard(card)
					if context.other_card.facing == 'front' then
						if SMODS.pseudorandom_probability(self, "plungerfaceSeed", card.ability.extra.chance, card.ability.extra.perchance, 'plungerfaceIdef') then
							context.other_card:flip()
						end
					end
				end
			end
		end

		if context.joker_main and context.cardarea == G.jokers then
			local multVal = 1
			for _, hCard in ipairs(G.hand.cards) do
				if (hCard.facing == 'back') then
					multVal = multVal + card.ability.extra.mult_mod
				end
			end
			return {
				x_mult = multVal,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.chance, card.ability.extra.perchance, 'plungerfaceIdef')
		return { vars = { num, den, card.ability.extra.mult_mod }, key = self.key }
	end
}

--aea
SMODS.Joker{
	key = "aea",
	config = { extra = { hands = -1 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'aea',

	calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.before then
			if (context.scoring_name == 'Three of a Kind' or context.scoring_name == 'Four of a Kind') then
				return {
					level_up = 1,
					level_up_hand = context.scoring_name,
					message = localize('k_level_up_ex')
				}
			end
		end
	end,

	add_to_deck = function(self, card, from_debuff)
		G.GAME.round_resets.hands = math.max(G.GAME.round_resets.hands + card.ability.extra.hands, 1)
	end,

	remove_from_deck = function(self, card, from_debuff)
		G.GAME.round_resets.hands = math.max(G.GAME.round_resets.hands - card.ability.extra.hands, 1)
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hands }, key = self.key }
	end
}

--1010511
SMODS.Joker{
	key = "1010511",
	config = { repetitions = 1, extra = { baseMult = 11, mult = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = '1010511',

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			local ten_tally = 0
			for k, v in pairs(G.playing_cards) do
				if v:get_id() == 10 then ten_tally = ten_tally + 1 end
			end
			local moreMult = math.floor(ten_tally / 5)
			card.ability.extra.mult     = card.ability.extra.baseMult * moreMult
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				mult = card.ability.extra.mult,
				colour = G.C.RED
			}
		end

		if context.cardarea == G.play and context.repetition and context.other_card:get_id() == 10 then
			return {
				message = localize('k_again_ex'),
				repetitions = card.ability.repetitions,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.baseMult, card.ability.extra.mult }, key = self.key }
	end
}

--redface
SMODS.Joker{
	key = "redface",
	config = { extra = { x_mult_mod = 0.4, x_mult = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'redface',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_mult = card.ability.extra.x_mult,
				colour = G.C.RED
			}
		end

		if context.individual and context.cardarea == G.play and not context.blueprint then
			if context.other_card:is_face() and (context.other_card:is_suit("Hearts") or context.other_card.ability.name == 'Wild Card') then
				card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod
				return {
					extra = {focus = card, message = localize('k_upgrade_ex')},
					card = card,
					colour = G.C.RED
				}
			end
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			local last_x_mult = card.ability.extra.x_mult
			card.ability.extra.x_mult = 1
			if last_x_mult > 1 then
				return {
					card = card,
					message = localize('k_reset')
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult_mod, card.ability.extra.x_mult }, key = self.key }
	end
}

--stukroche
SMODS.Joker{
	key = "stukroche",
	config = { h_size = 3, extra = { dollars = -1 }},
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'stukroche',

	calculate = function(self, card, context)
		if context.discard and not context.other_card.debuff and not context.blueprint then
			ease_dollars(card.ability.extra.dollars)
			return {
				message = localize('$')..card.ability.extra.dollars,
				colour = G.C.PURPLE,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_size, card.ability.extra.dollars }, key = self.key }
	end
}

--spyCamera
SMODS.Joker{
	key = "spyCamera",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 4,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'spyCamera',

	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local sendResult = false
			local result = {
				dollars = nil,
				x_mult = nil,
				extra = nil,
				card = card,
				colour = nil,
			}
			if context.other_card.ability.name == 'Gold Card' then
				sendResult = true
				G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + 3
				G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
				result.dollars = 3
			end
			if context.other_card.ability.name == 'Steel Card' then
				sendResult = true
				result.x_mult = 1.5
			end
			if context.other_card.seal == 'Blue' then
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					sendResult = true
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					result.extra = {focus = card, message = localize('k_plus_planet'), func = function()
					G.E_MANAGER:add_event(Event({
						trigger = 'before',
						delay = 0.0,
						func = (function()
							local _planet = 0
							for k, v in pairs(G.P_CENTER_POOLS.Planet) do
								if v.config.hand_type == context.scoring_name then
									_planet = v.key
								end
							end
							local card = create_card('Planet', G.consumeables, nil, nil, nil, nil, _planet or nil, 'blus1')
							card:add_to_deck()
							G.consumeables:emplace(card)
							G.GAME.consumeable_buffer = 0
						return true
						end)}))
					end}
					result.colour = G.C.SECONDARY_SET.Planet
				end
			end
			if context.other_card.seal == 'Purple' then
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					sendResult = true
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					result.extra = {focus = card, message = localize('k_plus_tarot'), func = function()
									G.E_MANAGER:add_event(Event({
										trigger = 'before',
										delay = 0.0,
										func = (function()
											local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil, '8ba')
											card:add_to_deck()
											G.consumeables:emplace(card)
											G.GAME.consumeable_buffer = 0
										return true
										end)}))
									end}
					result.colour = G.C.SECONDARY_SET.Tarot
				end
			end
			if sendResult then
				return result
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--storyMode
SMODS.Joker{
	key = "storyMode",
	config = { extra = { probs = 1, probs_mod = 0.5, isInPlay = false } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 4,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'storyMode',

	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced and not context.blueprint then
			local wild_tally = 0
			for k, v in pairs(G.playing_cards) do
				if v.ability.name == 'Wild Card' then wild_tally = wild_tally + 1 end
			end
			card.ability.extra.probs = 1 + wild_tally * card.ability.extra.probs_mod
			for k, v in pairs(G.GAME.probabilities) do 
				G.GAME.probabilities[k] = v * card.ability.extra.probs
			end
			return {
				message = localize('k_upgrade_ex'),
				colour = G.C.GREEN,
				card = card
			}
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			for k, v in pairs(G.GAME.probabilities) do 
				G.GAME.probabilities[k] = v / card.ability.extra.probs
			end
			card.ability.extra.probs = 1
			return {
				message = localize('k_reset'),
				colour = G.C.GREEN,
				card = card
			}
		end
	end,

	remove_from_deck = function(self, card, from_debuff)
		for k, v in pairs(G.GAME.probabilities) do 
			G.GAME.probabilities[k] = v / card.ability.extra.probs
		end
		card.ability.extra.probs = 1
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.probs, card.ability.extra.probs_mod }, key = self.key }
	end
}

--rhomboor
SMODS.Joker{
	key = "rhomboor",
	config = { extra = { x_mult = 3 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'rhomboor',

	calculate = function(self,card,context)
		if context.joker_main and context.cardarea == G.jokers and #context.full_hand == 4 then
			return {
				x_mult = card.ability.extra.x_mult,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
		return { vars = { card.ability.extra.x_mult }, key = self.key }
	end
}

--jetbus
SMODS.Joker{
	key = "jetbus",
	config = { extra = { slots = 3, money_cost = -3 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 9,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	eternal = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'jetbus',

	set_ability = function(self, card, initial)
		card:set_eternal(true)
	end,

	add_to_deck = function(self, card, from_debuff)
		if not from_debuff then
			G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
		end
	end,

	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff then
			G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
			G.GAME.dollars = 0;
		end
	end,

	calculate = function(self, card, context)
		if context.after and not context.blueprint then
			card.ability.extra.money_cost = math.min(3, G.GAME.dollars)
			return {
				p_dollars = -card.ability.extra.money_cost
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.slots, card.ability.extra.money_cost }, key = self.key, lines = { "+%s Joker Slot%s" } }
	end
}

--lolandPranked
SMODS.Joker{
	key = "lolandPranked",
	config = { extra = { x_mult = 64, chance = 1, perchance = 16, chance2 = 1, perchance2 = 64 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'lolandPranked',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers then
			if SMODS.pseudorandom_probability(self, "lolandPrankedSeed", card.ability.extra.chance, card.ability.extra.perchance, 'lolandPrankedIdef') then
				shakecard(card)
				for _, pCard in ipairs(G.play.cards) do
					pCard:set_ability(G.P_CENTERS.m_glass, nil, true)
					shakecard(pCard)
				end
			end
		end
		if context.joker_main and context.cardarea == G.jokers then
			if SMODS.pseudorandom_probability(self, "lolandPrankedSeed2", card.ability.extra.chance2, card.ability.extra.perchance2, 'lolandPrankedIdef2') then
				return {
					x_mult = card.ability.extra.x_mult,
					colour = G.C.RED
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.chance, card.ability.extra.perchance, 'lolandPrankedIdef')
		local num2, den2 = SMODS.get_probability_vars(self, card.ability.extra.chance2, card.ability.extra.perchance2, 'lolandPrankedIdef2')
		return { vars = { num, den, num2, den2, card.ability.extra.x_mult }, key = self.key }
	end
}

--bobi
SMODS.Joker{
	key = "bobi",
	config = { extra = { targetPos = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = "Copycat",
	soul_pos = nil,
	atlas = 'bobi',

	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			shakecard(card)
			card.ability.extra.targetPos = math.random(#G.jokers.cards)
		end

		--[[ local ret = SMODS.blueprint_effect(card, target_joker, context)
		if ret then
			SMODS.calculate_effect(ret, card)
		end ]]
		if context.retrigger_joker_check and not context.retrigger_joker then
			local target_joker = G.jokers.cards[card.ability.extra.targetPos]
			if target_joker and target_joker ~= card then
				if target_joker.config.center.blueprint_compat then
					if context.other_card == target_joker then
						return {
							message = "Again!",
							colour = G.C.RED,
							repetitions = 1,
							message_card = card
						}
					end
				end
			end
		end
	end,

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			local target_joker = G.jokers.cards[card.ability.extra.targetPos]
			if target_joker and target_joker ~= card and target_joker.config.center.blueprint_compat then
				card.ability.blueprint_compat = 'compatible'
			else
				card.ability.blueprint_compat = 'incompatible'
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return {
			vars = { card.ability.extra.targetPos }, key = self.key,
			main_end = (card.area and card.area == G.jokers) and {
				{n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
					{n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
						{n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
					}}
				}}
			} or nil
		}
	end,
}

--eatHand
SMODS.Joker{
	key = "eatHand",
	config = { h_size = -2, d_size = 6 },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'eatHand',

	calculate = function(self, card, context)
		return nil
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.h_size, card.ability.d_size }, key = self.key }
	end
}

--starvingToxicant
SMODS.Joker{
	key = "starvingToxicant",
	config = { extra = { sell_value = 1, rerollsCount = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 6,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'starvingToxicant',

	calculate = function(self, card, context)
		if context.reroll_shop and not context.blueprint then
			card.ability.extra.rerollsCount = card.ability.extra.rerollsCount + 1

			if card.ability.extra.rerollsCount >= 3 then
				shakecard(card)
				card.ability.extra.rerollsCount = 0
				return {
					func = function()
						for _, area in ipairs({ G.jokers, G.consumeables }) do
							for i, target_card in ipairs(area.cards) do
								if target_card.set_cost then
									target_card.ability.extra_value = (target_card.ability.extra_value or 0) + card.ability.extra.sell_value
									target_card:set_cost()
								end
							end
						end
						return true
					end,
					message = localize('k_val_up'),
					colour = G.C.MONEY
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.sell_value, card.ability.extra.rerollsCount }, key = self.key }
	end
}

--teamGP
SMODS.Joker{
	key = "teamGP",
	config = { extra = { num = 5, den = 11 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'teamGP',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers then
			if (context.scoring_name == 'Flush' or context.scoring_name == 'Straight Flush' or
				context.scoring_name == 'Royal Flush' or context.scoring_name == 'Flush House' or
				context.scoring_name == 'Flush Five') then
				if SMODS.pseudorandom_probability(self, 'teamGPSeed', card.ability.extra.num, card.ability.extra.den, 'teamGPIdef') then
					shakecard(card)
					G.E_MANAGER:add_event(Event({
						func = function()
							local selected_tag = pseudorandom_element(G.P_TAGS, pseudoseed("create_tag")).key
							local tag = Tag(selected_tag)
							if tag.name == 'Orbital Tag' then
								local _poker_hands = {}
								for k, v in pairs(G.GAME.hands) do
									if v.visible then
										_poker_hands[#_poker_hands + 1] = k
									end
								end
								tag.ability.orbital_hand = pseudorandom_element(_poker_hands, 'teamGPOrbital')
							end
							if tag.name == 'Boss Tag' then
								tag = Tag('tag_negative')
							end
							tag:set_ability()
							add_tag(tag)
							play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
							return true
						end
					}))
				end
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'teamGPIdef')
		return { vars = { num, den }, key = self.key }
	end
}

--[[ 
	Check how many have edition and how many seal
	Exclude those from list
	Bigger list of the two chooses a card to apply edition or seal, otherwise random
]]
--copeDrink
SMODS.Joker{
	key = "copeDrink",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'copeDrink',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 then
			shakecard(card)
			local sealCards = { }
			local editionCards = { }
			for i = 1, #context.scoring_hand do
				if not context.scoring_hand[i].edition then
					editionCards[#editionCards + 1] = context.scoring_hand[i]
				end
				if not context.scoring_hand[i].seal then
					sealCards[#sealCards + 1] = context.scoring_hand[i]
				end
			end

			if #sealCards > 0 or #editionCards > 0 then
				local applySeal = false
				if #editionCards <= 0 then applySeal = true end
				if #sealCards > #editionCards then
					applySeal = true
				elseif #sealCards == #editionCards then
					local sealEdition = math.random(2)
					if sealEdition == 1 then applySeal = true
					end
				end

				if applySeal then
					local randID = math.random(#sealCards)
					local sealID = math.random(4)
					if      sealID == 1 then sealCards[randID]:set_seal('Red', true)
					elseif  sealID == 2 then sealCards[randID]:set_seal('Blue', true)
					elseif  sealID == 3 then sealCards[randID]:set_seal('Gold', true)
					elseif  sealID == 4 then sealCards[randID]:set_seal('Purple', true)
					end
					shakecard(sealCards[randID])
				else
					local randID = math.random(#editionCards)
					local edition = poll_edition('copeEdition', nil, true, true)
					editionCards[randID]:set_edition(edition, true)
					shakecard(editionCards[randID])
				end
				return {
					message = localize('k_upgrade_ex'),
					card = card,
					colour = G.C.GREEN
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--rebby
SMODS.Joker{
	key = "rebby",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'rebby',

	calculate = function(self, card, context)
		if context.joker_main and not context.before and not context.after and hand_chips and mult then
			local multTen = mult * 0.15
			local chipsTen = hand_chips * 0.15
			if hand_chips <= multTen then
				hand_chips = mod_chips(multTen)
			elseif mult <= chipsTen then
				mult = mod_mult(chipsTen)
			end
			update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
			return {
				message = localize('k_rebby'),
				colour = G.C.PURPLE
			}
		end
	end
}

--randy
SMODS.Joker{
	key = "randy",
	config = { extra = { num = 1, den = 15, x_mult_perma = 0.25 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'randy',

	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			local r = math.random(5, 10)
			context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
			context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + r
			if SMODS.pseudorandom_probability(self, "randySeed", card.ability.extra.num, card.ability.extra.den, 'randyIdef') then
				shakecard(card)
				context.other_card.ability.x_mult = context.other_card.ability.x_mult or 1
				context.other_card.ability.x_mult = context.other_card.ability.x_mult + card.ability.extra.x_mult_perma
			end
			return {
				extra = {message = localize('k_upgrade_ex'), colour = G.C.PALE_GREEN},
				colour = G.C.PALE_GREEN,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'randyIdef')
		return { vars = { num, den, card.ability.extra.x_mult_perma }, key = self.key }
	end
}

--tme
SMODS.Joker{
	key = "tme",
	config = {  },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'tme',

	calculate = function(self, card, context)
		if context.other_joker and not context.before and not context.after and hand_chips and mult then
			if card ~= context.other_joker and (context.other_joker.config.center.rarity == 2 or context.other_joker.config.center.rarity == 3) then
				local perc_amount = context.other_joker.config.center.rarity - 1 --1 or 2
				G.E_MANAGER:add_event(Event({
					func = function()
						context.other_joker:juice_up(0.5, 0.5)
						play_sound('gong', 0.94, 0.3)
						return true
					end
				}))
				--[[ sendDebugMessage(G.GAME.pseudorandom.seed, 'seed') ]]
				local difference = math.abs(hand_chips - mult)
				local percDiff = difference * (0.125 * perc_amount)
				if hand_chips > mult then
					hand_chips = mod_chips(hand_chips - percDiff)
					mult = mod_mult(mult + percDiff)
				elseif mult > hand_chips then
					hand_chips = mod_chips(hand_chips + percDiff)
					mult = mod_mult(mult - percDiff)
				end
				update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
				local _text = 25 * perc_amount
				return {
					message = _text .. '% ' .. localize('k_balanced'),
					colour = G.C.PURPLE,
					card = context.other_joker
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return {  }
	end
}

--[[ 
	When added generate Negative Oops all 6 based on current dollars (11 + dollars * 4)
	When removed apply polychrome to jokers with no edition
	When opening a booster 60% to create a negative Tarot/Planet/Spectral/Powerup/Timewarp
	When buying a card 20% to give $5
	When rerolling 15% to increase all sell value/double Tag/double $
	When ending shop 30% to create a negative joker (not self)
	When skipping blind generate Tags based on Ante level (count as single effect)
	When skipping booster 40% to give $11
	When using a tarot/spectral/powerup/timewarp, generate a card with the most present suit in the deck, chance is 1/((tarots used + 11) * 10)
	When using a planet, 1/3 level up all hands based on total hands played (hands * 11)
	Before discarding, 10% to add Purple Seal on each discarding card
	Before playing the hand, 10% to add Polychrome/Red/Gold on each played card
	While scoring 3/20 to give +24 Chips / +5 Mult / x1.11 Mult for every card scored
	Also while scoring 1/8 to permanently add +11 Chips / +2 Mult / x0.05 Mult for every card scored
	Also while scoring 1/11 to retrigger the card scored
	When other jokers score 25% to give a random amount of Xmult (1.1 to 2.4)
]]
function nInteractions(prob, max)
	max = max or 111
	local iters = 0
	for i = 1, max do
		local r = math.random(100)
		if prob < r then
			return iters
		else
			iters = iters + 1
		end
		prob = prob / 2
	end
	return iters
end

--mimiz
SMODS.Joker{
	key = "mimiz",
	config = { extra = { effects = 111 } },
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	rarity = 4,
	cost = 20,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	atlas = 'mimiz',

	add_to_deck = function(self, card, from_debuff)
		local inters = nInteractions(11 + G.GAME.dollars * 4, card.ability.extra.effects)

		G.E_MANAGER:add_event(Event({
			func = function() 
				for i = 1, inters do
					card.ability.extra.effects = card.ability.extra.effects - 1
					local card =  create_card('Joker', G.jokers, nil, nil, nil, nil, "j_oops", 'mmz')
					card:add_to_deck()
					card:set_edition({negative = true})
					G.jokers:emplace(card)
					card:start_materialize()
					G.GAME.joker_buffer = 0
				end
				return true
			end
		}))
	end,

	remove_from_deck = function(self, card, from_debuff)
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] ~= self and not G.jokers.cards[i].edition then
				G.jokers.cards[i]:set_edition({polychrome = true})
			end
		end
	end,

	calculate = function(self, card, context)
		if context.open_booster then
			local r = math.random(20)
			local t = { a = nil, b = nil }

			if      r <= 1 then t = { a = 'Tarot', b = 'k_plus_tarot' }
			elseif  r <= 2 then t = { a = 'Planet', b = 'k_plus_planet' }
			elseif  r <= 3 then t = { a = 'Spectral', b = 'k_plus_spectral' }
			elseif  r <= 4 then t = { a = 'Powerup', b = 'k_nolok' }
			elseif  r <= 5 then t = { a = 'Timewarp', b = 'k_nolok' }
			end
			if      r <= 5 then
				shakecard(card)
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				G.E_MANAGER:add_event(Event({
						trigger = 'before',
						delay = 0.0,
						func = (function()
								local card = create_card(t.a, G.consumeables, nil, nil, nil, nil, nil, 'mob')
								card:add_to_deck()
								card:set_edition({negative = true})
								G.consumeables:emplace(card)
								G.GAME.consumeable_buffer = 0
							return true
						end)}))
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize(t.b), colour = G.C.BLUE})
			end
		end
		if context.buying_card then
			local r = math.random(10)
			if r == 1 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				local dols = 5
				ease_dollars(dols)
				return {
					message = localize('$')..dols,
					colour = G.C.BLUE,
					card = card
				}
			end
		end
		if context.reroll_shop then
			local r = math.random(40)
			if r == 1 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				shakecard(card)
				return {
					func = function()
						for _, area in ipairs({ G.jokers, G.consumeables }) do
							for i, target_card in ipairs(area.cards) do
								if target_card.set_cost then
									target_card.ability.extra_value = (target_card.ability.extra_value or 0) + 1
									target_card:set_cost()
								end
							end
						end
						return true
					end,
					message = localize('k_val_up'),
					colour = G.C.BLUE
				}
			elseif r == 2 then
				shakecard(card)
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				G.E_MANAGER:add_event(Event({
					func = (function()
						add_tag(Tag('tag_double'))
						play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
						play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
						return true
					end)
				}))
			elseif r == 3 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				local dols = G.GAME.dollars
				ease_dollars(dols)
				return {
					message = localize('$')..dols,
					colour = G.C.BLUE,
					card = card
				}
			end
		end
		if context.ending_shop then
			local r = math.random(20)
			if r <= 3 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				shakecard(card)
				G.E_MANAGER:add_event(Event({
					func = function() 
						local card =  create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'mes')
						card:add_to_deck()
						card:set_edition({negative = true})
						G.jokers:emplace(card)
						card:start_materialize()
						G.GAME.joker_buffer = 0
						return true
					end
				}))
			end
		end
		if context.skip_blind then
			shakecard(card)
			G.E_MANAGER:add_event(Event({
				func = function()
					for i = 1, nInteractions(G.GAME.round_resets.blind_ante * 25, card.ability.extra.effects) do
						local selected_tag = pseudorandom_element(G.P_TAGS, pseudoseed("create_tag")).key
						local tag = Tag(selected_tag)
						if tag.name == 'Orbital Tag' then
							local _poker_hands = {}
							local target_hand = nil
							local temp_played = -1
							for hand, value in pairs(G.GAME.hands) do
								if value.played >= temp_played and value.visible then
									temp_played = value.played
									target_hand = hand
								end
							end
							_poker_hands[1] = target_hand
							tag.ability.orbital_hand = pseudorandom_element(_poker_hands, 'mimizOrbital')
						end
						tag:set_ability()
						add_tag(tag)
						play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
						if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
					end
					return true
				end
			}))
		end
		if context.skipping_booster then
			local r = math.random(10)
			if r <= 2 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				local dols = 11
				ease_dollars(dols)
				return {
					message = localize('$')..dols,
					colour = G.C.BLUE,
					card = card
				}
			end
		end
		if context.using_consumeable and (context.consumeable.ability.set == 'Tarot' or context.consumeable.ability.set == 'Spectral' or context.consumeable.ability.set == 'Powerup' or context.consumeable.ability.set == 'Timewarp') then
			local r = math.random(nInteractions((G.GAME.consumeable_usage_total.tarot + 11) * 10, card.ability.extra.effects) + 4)
			if r <= 1 then
				local counts = {}
				for k, v in pairs(G.playing_cards) do
					local suit = v.base.suit
					if suit == 'Hearts' then suit = 'H' end
					if suit == 'Clubs' then suit = 'C' end
					if suit == 'Diamonds' then suit = 'D' end
					if suit == 'Spades' then suit = 'S' end

					if not counts[suit] then counts[suit] = { count = 0 } end
					counts[suit].count = counts[suit].count + 1
				end

				local max_count = 0
				local most_frequent_suit = nil

				for key, data in pairs(counts) do
					if data.count > max_count then
						max_count = data.count
						most_frequent_suit = key
					end
				end
				local rank = { 'A', '2' }
				if context.consumeable.ability.set == 'Tarot' then rank = { 'A', '2', '3', '4', '5' }
				elseif context.consumeable.ability.set == 'Spectral' then rank = { '4', '5', '6', '7', '8' }
				elseif context.consumeable.ability.set == 'Powerup' then rank = { '7', '8', '9', 'T', 'J' }
				elseif context.consumeable.ability.set == 'Timewarp' then rank = { 'T', 'J', 'Q', 'K', 'A' }
				end
				local chosen_rank = pseudorandom_element(rank, pseudoseed('mimizC'))
				local most_frequent_card = most_frequent_suit .. '_' .. chosen_rank
					
				G.E_MANAGER:add_event(Event({
					func = function()
						local ng = math.random(6)
						local _card = create_playing_card({front = G.P_CARDS[most_frequent_card]}, G.deck)
						if ng >= 5 then 
							_card:set_seal('Red', true)
							_card:set_edition({polychrome = true})
						elseif ng >= 3 then
							_card:set_edition({polychrome = true})
						else
							_card:set_seal('Red', true)
						end
						G.GAME.blind:debuff_card(_card)
						playing_card_joker_effects({true})
						return true
					end
				}))
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
			end
		end
		if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
			local r = math.random(6)
			if r == 1 then
				local nPlays = { }
				for h, v in pairs(G.GAME.hands) do
					if v.visible and v.played > 0 then nPlays[#nPlays + 1] = h end
				end
				local inters = nInteractions(#nPlays * 111, card.ability.extra.effects)
				if inters > 0 then
					shakecard(card)
					for i = 1, inters do
						local j = (i % #nPlays) + 1
						local text = nPlays[j]
						card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
						update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, level=G.GAME.hands[text].level})
						level_up_hand(context.blueprint_card or card, text, nil, 1)
						update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
					end
					if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				end
			end
		end
		if context.pre_discard then
			for k, v in ipairs(G.hand.highlighted) do
				if not v.seal then
					local r = math.random(20)
					if r <= 1 then
						v:set_seal('Purple', true)
						if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
					end
				end
			end
		end
		if context.before and context.cardarea == G.jokers then
			for k, pCard in ipairs(G.play.cards) do
				local r = math.random(60)
				if r == 1 and not pCard.edition then
					pCard:set_edition({polychrome = true})
					if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				end
				if r == 2 and not pCard.seal then
					pCard:set_seal('Red', true)
					if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				end
				if r == 3 and not pCard.seal then
					pCard:set_seal('Gold', true)
					if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				end
			end
		end
		if context.individual and context.cardarea == G.play then
			local m = math.random(48)
			if m == 1 then
				context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
				context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + 11
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
			elseif m == 2 then
				context.other_card.ability.mult = context.other_card.ability.mult or 0
				context.other_card.ability.mult = context.other_card.ability.mult + 2
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
			elseif m == 3 then
				context.other_card.ability.x_mult = context.other_card.ability.x_mult or 1
				context.other_card.ability.x_mult = context.other_card.ability.x_mult + 0.05
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
			end

			local r = math.random(40)
			if r == 1 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				return { chips = 24, card = card }
			elseif r == 2 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				return { mult = 5, card = card }
			elseif r == 3 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				return { x_mult = 1.11, card = card }
			end
		end
		if context.repetition and context.cardarea == G.play then
			local r = math.random(22)
			if r == 1 then
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				return {
					message = localize('k_again_ex'),
					repetitions = 1,
					card = card
				}
			end
		end
		if context.other_joker and card ~= context.other_joker then
			local r = math.random(8)
			if r == 1 then
				shakecard(context.other_joker)
				local xMultJ = 1 + math.random(14) / 10
				if not context.blueprint then card.ability.extra.effects = card.ability.extra.effects - 1 end
				return {
					message = localize{type='variable',key='a_xmult',vars={xMultJ}},
					Xmult_mod = xMultJ
				}
			end
		end
	end,

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			if card.ability.extra.effects <= 0 then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = "ggs cya", colour = G.C.BLUE})
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r                        = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is             = true
						card.children.center.pinch.x    = true
						G.E_MANAGER:add_event(Event({
							trigger     = 'after',
							delay       = 0.3,
							blockable   = false,
							func        = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true
							end
						})) 
						return true
					end
				}))
				card.ability.extra.effects = 111
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.effects }, key = self.key }
	end
}

--howAreHippies
SMODS.Joker{
	key = "howAreHippies",
	config = { extra = { chips = 20, reqs = 3, progress = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'howAreHippies',
	in_pool = function(self,args)
		return not G.GAME.pool_flags.storyEvolved
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				chips = card.ability.extra.chips,
				colour = G.C.CHIPS
			}
		end
		
		if context.open_booster and not context.blueprint then
			shakecard(card)
			card.ability.extra.progress = card.ability.extra.progress + 1
			if card.ability.extra.progress >= card.ability.extra.reqs then
				G.GAME.pool_flags.storyEvolved = true
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Evolve!", colour = G.C.PURPLE})
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r                        = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is             = true
						card.children.center.pinch.x    = true
						G.E_MANAGER:add_event(Event({
							trigger     = 'after',
							delay       = 0.3,
							blockable   = false,
							func        = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true
							end
						}))
						local evo = SMODS.create_card({
							set = 'Joker',
							area = G.jokers,
							legendary = false,
							skip_materialize = false,
							soulable = false,
							key = 'j_stk_expandNatural'})
						evo:add_to_deck()
						evo:start_materialize()
						G.jokers:emplace(evo)
						if card.edition and card.edition.negative then
							evo:set_edition({negative = true})
						end
						return true
					end
				}))
				return { }
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.reqs, card.ability.extra.progress }, key = self.key }
	end
}

--expandNatural
SMODS.Joker{
	key = "expandNatural",
	config = { extra = { mult = 12, reqs = 5, progress = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 14,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'expandNatural',

	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				mult = card.ability.extra.mult,
				colour = G.C.MULT
			}
		end
		
		if context.selling_card and not context.blueprint then
			shakecard(card)
			card.ability.extra.progress = card.ability.extra.progress + 1
			if card.ability.extra.progress >= card.ability.extra.reqs then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Evolve!", colour = G.C.PURPLE})
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r                        = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is             = true
						card.children.center.pinch.x    = true
						G.E_MANAGER:add_event(Event({
							trigger     = 'after',
							delay       = 0.3,
							blockable   = false,
							func        = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true
							end
						}))
						local evo = SMODS.create_card({
							set = 'Joker',
							area = G.jokers,
							legendary = false,
							skip_materialize = false,
							soulable = false,
							key = 'j_stk_useOldCode'})
						evo:add_to_deck()
						evo:start_materialize()
						G.jokers:emplace(evo)
						if card.edition and card.edition.negative then
							evo:set_edition({negative = true})
						end
						return true
					end
				}))
				return { }
			end
		end

		if context.selling_self then
			G.GAME.pool_flags.storyEvolved = false
		end
	end,

	add_to_deck = function(self, card, from_debuff)
		G.GAME.pool_flags.storyEvolved = true
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.reqs, card.ability.extra.progress }, key = self.key }
	end
}

--useOldCode
SMODS.Joker{
	key = "useOldCode",
	config = { extra = { x_mult = 2, most_hand = '[most played hand]', reqs = 7, progress = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 21,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'useOldCode',

	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	add_to_deck = function(self, card, from_debuff)
		if not from_debuff then
			local _handname, _played, _order = 'High Card', -1, 100
			for k, v in pairs(G.GAME.hands) do
				if v.played > _played or (v.played == _played and _order > v.order) then 
					_played = v.played
					_handname = k
				end
			end
			card.ability.extra.most_hand = _handname
		end
		G.GAME.pool_flags.storyEvolved = true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_mult = card.ability.extra.x_mult,
				colour = G.C.MULT
			}
		end

		if context.selling_self then
			G.GAME.pool_flags.storyEvolved = false
		end
		
		if context.cardarea == G.jokers and context.before and context.scoring_name == card.ability.extra.most_hand and not context.blueprint then
			shakecard(card)
			card.ability.extra.progress = card.ability.extra.progress + 1
			if card.ability.extra.progress >= card.ability.extra.reqs then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Evolve!", colour = G.C.PURPLE})
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						card.T.r                        = -0.2
						card:juice_up(0.3, 0.4)
						card.states.drag.is             = true
						card.children.center.pinch.x    = true
						G.E_MANAGER:add_event(Event({
							trigger     = 'after',
							delay       = 0.3,
							blockable   = false,
							func        = function()
								G.jokers:remove_card(card)
								card:remove()
								card = nil
								return true
							end
						}))
						local evo = SMODS.create_card({
							set = 'Joker',
							area = G.jokers,
							legendary = false,
							skip_materialize = false,
							soulable = false,
							key = 'j_stk_books'})
						evo:add_to_deck()
						evo:start_materialize()
						G.jokers:emplace(evo)
						if card.edition and card.edition.negative then
							evo:set_edition({negative = true})
						end
						return true
					end
				}))
				return { }
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.most_hand, card.ability.extra.reqs, card.ability.extra.progress }, key = self.key }
	end
}

--books
SMODS.Joker{
	key = "books",
	config = { extra = { most_hand = '[most played hand]', chips = 0, mult = 0, x_mult = 1.7, chips_mod = 15, mult_mod = 3, x_mult_mod = 0.1 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 28,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'books',

	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	add_to_deck = function(self, card, from_debuff)
		if not from_debuff then
			local _handname, _played, _order = 'High Card', -1, 100
			for k, v in pairs(G.GAME.hands) do
				if v.played > _played or (v.played == _played and _order > v.order) then 
					_played = v.played
					_handname = k
				end
			end
			card.ability.extra.most_hand = _handname
		end
		G.GAME.pool_flags.storyEvolved = true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				chips = card.ability.extra.chips,
				mult = card.ability.extra.mult,
				x_mult = card.ability.extra.x_mult
			}
		end

		if context.selling_self then
			G.GAME.pool_flags.storyEvolved = false
		end
		
		if context.open_booster and not context.blueprint then
			--[[ local r = math.random(12, 20) ]]
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_mod
			return {
				message = localize('k_upgrade_ex'), colour = G.C.CHIPS
			}
		end

		if context.selling_card and not context.blueprint then
			--[[ local r = math.random(2, 6) ]]
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
			return {
				message = localize('k_upgrade_ex'), colour = G.C.RED
			}
		end

		if context.cardarea == G.jokers and context.before and context.scoring_name == card.ability.extra.most_hand and not context.blueprint then
			--[[ local r = math.random(3) / 10 ]]
			card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod
			return {
				message = localize('k_upgrade_ex'), colour = G.C.PURPLE
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.most_hand, card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.x_mult,
							card.ability.extra.chips_mod, card.ability.extra.mult_mod, card.ability.extra.x_mult_mod }, key = self.key }
	end
}

--owalkaz
SMODS.Joker{
	key = "owalkaz",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 3,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'owalkaz',

	calculate = function(self, card, context)
		local createPlanet = 0
		if context.cardarea == G.jokers and context.joker_main then
			if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
				if (context.scoring_name == 'Full House' or context.scoring_name == 'Flush House') then
					for _, hCard in ipairs(G.play.cards) do
						if (hCard.base.suit == 'Diamonds') then
							createPlanet = 1
						end
						if hCard.ability.name == 'Wild Card' then
							createPlanet = 1
						end
					end
				end
				if createPlanet > 0 then
					local jokers_to_create = math.floor(math.min(1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer)))      
					for i = 1,jokers_to_create do
						G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
						G.E_MANAGER:add_event(Event({
							trigger = 'before',
							delay = 0.0,
							func = (function()
							local card = create_card('Planet',G.consumeables, nil, nil, nil, nil, nil, '8ba')
							card:add_to_deck()
							G.consumeables:emplace(card)
							G.GAME.consumeable_buffer = 0
							return true
						end)}))
					end
					return {
						message = localize('k_plus_planet'),
						colour = G.C.SECONDARY_SET.Planet,
						card = card
					}
				end
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--boltrew
SMODS.Joker{
	key = "boltrew",
	config = { extra = { num = 1, den = 5, dollars = 0, goldenCount = 11 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 7,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'boltrew',

	calculate = function(self, card, context)
		if context.reroll_shop then
			return {
				func = function()
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
						createCount = math.floor(math.min(1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer)))
						for i = 1, createCount do
							G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
							G.E_MANAGER:add_event(Event({
								trigger = 'after',
								delay = 0.4,
								func = function()
									play_sound('timpani')
									SMODS.add_card({ set = 'Spectral', soulable = true })
									shakecard(card)
									G.GAME.consumeable_buffer = 0
									return true
								end
							}))
						end
						delay(0.6)
						if created_consumable then
							card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
						end
					end

					if not context.blueprint and SMODS.pseudorandom_probability(self, "boltrewSeed", card.ability.extra.num, card.ability.extra.den, 'boltrewIdef') then
						card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Crash!", colour = G.C.MONEY})
						G.GAME.dollars = 0;
						if card.ability.extra.goldenCount == 11 and not context.blueprint then
							local gb = SMODS.create_card({
								set = 'Joker',
								area = G.shop_jokers,
								legendary = false,
								skip_materialize = false,
								soulable = false,
								key = 'j_stk_boltrewGolden'})
							create_shop_card_ui(gb, 'Joker', G.shop_jokers)
							gb:start_materialize()
							G.shop_jokers:emplace(gb)
							card.ability.extra.goldenCount = 0
						end
					end
					return true
				end
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'boltrewIdef')
		return { vars = { num, den, card.ability.extra.dollars }, key = self.key }
	end
}

--boltrewGolden
SMODS.Joker{
	key = "boltrewGolden",
	config = { extra = { dollars = 2, x_mult = 1, dollarsLimit = 50 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 11,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'boltrewGolden',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.selling_card then
			return {
				dollars = card.ability.extra.dollars
			}
		end
		if context.cardarea == G.jokers and context.joker_main then
			return {
				mult = math.floor(math.abs(card.ability.extra.dollarsLimit - G.GAME.dollars) / 2),
				x_mult = card.ability.extra.x_mult
			}
		end
		if context.using_consumeable and not context.blueprint then
			if context.consumeable and context.consumeable.ability.set == 'Spectral' then
				card.ability.extra.x_mult = card.ability.extra.x_mult + (pseudorandom('boltrewGolden', 1, 5) / 20)
				return {
					extra = {focus = card, message = localize('k_upgrade_ex')},
					card = card,
					colour = G.C.RED
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.dollars, math.floor(math.abs(card.ability.extra.dollarsLimit - G.GAME.dollars) / 2) or 0, card.ability.extra.x_mult, card.ability.extra.dollarsLimit }, key = self.key }
	end
}

--herrings
SMODS.Joker{
	key = "herrings",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'herrings',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
			local jokers_to_create = math.min(1, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
			G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
			G.E_MANAGER:add_event(Event({
				func = function() 
					for i = 1, jokers_to_create do
						local _card = SMODS.create_card({
							set = 'Joker',
							area = G.jokers,
							legendary = false,
							skip_materialize = false,
							soulable = false,
							key = pseudorandom_element(listTimwarpJokers(), pseudoseed('herrings'))})
						_card:add_to_deck()
						_card:start_materialize()
						G.jokers:emplace(_card)
						G.GAME.joker_buffer = 0
					end
					return true
				end
			}))   
			card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.PALE_GREEN}) 
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

function countSpec(str, sub)
   local _, count = string.gsub(str, sub, '%0')
   return count
end

--geeko
SMODS.Joker{
	key = "geeko",
	config = { extra = { sign = '...', value = '', bonus = 'none' } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'geeko',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.sign = '+'
		card.ability.extra.value = 3
		card.ability.extra.bonus = 'Chips'

		local _seed = string.upper(tostring(G.GAME.pseudorandom.seed))
		local digitSum = 3
		local digitCount = 0
		for digit in string.gmatch(_seed, '%d') do
			digitSum = digitSum + tonumber(digit)
			digitCount = digitCount + 1
		end

		local sums = { spec = countSpec(_seed, "[JKWXY]") * 2, norm = #_seed - countSpec(_seed, "[JKWXY]") - digitCount,
						chips = countSpec(_seed, "[CHIPSBFG]") * 3, mult = countSpec(_seed, "[MULTJKQ]") * 4, dollars = countSpec(_seed, "[DOLARSMNEYVWXZ]")}
		if sums.spec > sums.norm then
			card.ability.extra.sign = 'X'
		end

		if sums.chips >= sums.mult and sums.chips >= sums.dollars then
			card.ability.extra.bonus = 'Chips' end
		if sums.dollars >= sums.mult and sums.dollars >= sums.chips then
			card.ability.extra.bonus = 'Dollars' end
		if sums.mult >= sums.chips and sums.mult >= sums.dollars then
			card.ability.extra.bonus = 'Mult' end

		if card.ability.extra.sign == '+' then
			if card.ability.extra.bonus == 'Chips' then
				card.ability.extra.value = digitSum * 5
			elseif card.ability.extra.bonus == 'Dollars' then
				card.ability.extra.value = math.floor(digitSum / 3 + 1)
			else
				card.ability.extra.value = digitSum
			end
		else
			card.ability.extra.value = 0.9 + digitSum / 20
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			local _ret = {
				chips = nil,
				mult = nil,
				x_chips = nil,
				x_mult = nil,
				message = nil,
				card = card,
				colour = nil,
			}

			if card.ability.extra.sign == '+' then
				if card.ability.extra.bonus == 'Chips' then
					_ret.chips = card.ability.extra.value
					_ret.colour = G.C.CHIPS
				elseif card.ability.extra.bonus == 'Mult' then
					_ret.mult = card.ability.extra.value
					_ret.colour = G.C.MULT
				elseif card.ability.extra.bonus == 'Dollars' then
					ease_dollars(card.ability.extra.value)
					_ret.colour = G.C.MONEY
					_ret.message = localize('$')..card.ability.extra.value
				end
			elseif card.ability.extra.sign == 'X' then
				if card.ability.extra.bonus == 'Chips' then
					_ret.x_chips = card.ability.extra.value
					_ret.colour = G.C.CHIPS
				elseif card.ability.extra.bonus == 'Mult' then
					_ret.x_mult = card.ability.extra.value
					_ret.colour = G.C.MULT
				elseif card.ability.extra.bonus == 'Dollars' then
					local dols = math.floor(G.GAME.dollars * (card.ability.extra.value - 1))
					ease_dollars(dols)
					_ret.colour = G.C.MONEY
					_ret.message = 'X'..localize('$')..card.ability.extra.value
				end
			end
			return _ret
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.sign, card.ability.extra.value, card.ability.extra.bonus }, key = self.key }
	end
}

--bsod
SMODS.Joker{
	key = "bsod",
	config = { extra = { reqs = 6, triggers = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'bsod',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			if card.ability.extra.triggers >= card.ability.extra.reqs then
				card.ability.extra.triggers = 0
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					G.E_MANAGER:add_event(Event({
						func = function()
							local _createSudo = SMODS.create_card({
								set = 'Timewarp',
								area = G.consumeables,
								legendary = false,
								skip_materialize = false,
								soulable = false,
								key = 'c_stk_sudo'})
							_createSudo:add_to_deck()
							G.consumeables:emplace(_createSudo)
							G.GAME.consumeable_buffer = 0
							return true
						end
					}))
					return {
						extra = { focus = card, message = '+ Sudo' },
						colour = G.C.STK.TIMEWARP
					}
				end
			end
			card.ability.extra.triggers = 0
		end

		if context.cardarea == G.play and context.individual and not context.blueprint then
			if (context.other_card:get_id() == 4 or 
				context.other_card:get_id() == 5 or 
				context.other_card:get_id() == 9) then
				card.ability.extra.triggers = card.ability.extra.triggers + 1
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.reqs }, key = self.key }
	end
}

--gown
SMODS.Joker{
	key = "gown",
	config = { extra = { chips = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'gown',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			if card.ability.extra.chips > 0 then
				local giveChips = card.ability.extra.chips
				card.ability.extra.chips = 0
				return {
					chips = giveChips,
					card = card,
					message = localize('k_reset')
				}
			end
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			card.ability.extra.chips = math.min(math.floor((G.GAME.chips - G.GAME.blind.chips) * 0.05), G.GAME.blind.chips * 0.5)
			return {
				message = localize('k_upgrade_ex'),
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips }, key = self.key }
	end
}

--penny
SMODS.Joker{
	key = "penny",
	config = { extra = { active = false } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'penny',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.selling_card and not context.blueprint then
			card.ability.extra.active = true
			local eval = function(card) return card.ability.extra.active end
			juice_card_until(card, eval, true)
		end

		if context.discard and #context.full_hand == 4 and card.ability.extra.active then
			local reqsMet = false
			local suits = {
				['Hearts'] = 0,
				['Diamonds'] = 0,
				['Spades'] = 0,
				['Clubs'] = 0
			}
			for i = 1, #context.full_hand do
				if context.full_hand[i].ability.name ~= 'Wild Card' then
					if context.full_hand[i]:is_suit('Hearts', true) and suits["Hearts"] == 0 then suits["Hearts"] = suits["Hearts"] + 1
					elseif context.full_hand[i]:is_suit('Diamonds', true) and suits["Diamonds"] == 0  then suits["Diamonds"] = suits["Diamonds"] + 1
					elseif context.full_hand[i]:is_suit('Spades', true) and suits["Spades"] == 0  then suits["Spades"] = suits["Spades"] + 1
					elseif context.full_hand[i]:is_suit('Clubs', true) and suits["Clubs"] == 0  then suits["Clubs"] = suits["Clubs"] + 1 end
				else
					reqsMet = true
				end
			end
			if not reqsMet then
				if suits["Hearts"] > 0 and
				suits["Diamonds"] > 0 and
				suits["Spades"] > 0 and
				suits["Clubs"] > 0 then
					reqsMet = true
				end
			end
			if reqsMet then
				card.ability.extra.active = false
				local creating = math.floor(math.min(1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer)))
				for i = 1, creating do
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					G.E_MANAGER:add_event(Event({
						func = function()
							local gb = SMODS.create_card({
								set = 'Powerup',
								area = G.consumeables })
							gb:add_to_deck()
							G.consumeables:emplace(gb)
							G.GAME.consumeable_buffer = 0
							return true
						end
					}))
				end
				return {
					message = localize('k_nolok'),
					colour = G.C.PURPLE,
					card = card
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--skirpy
SMODS.Joker{
	key = "skirpy",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 9,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'skirpy',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.skip_blind and not context.blueprint then
			if G.GAME.round_resets.blind_states.Big == 'Skipped' then
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('k_all_hands'),chips = '...', mult = '...', level=''})
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
					play_sound('tarot1')
					card:juice_up(0.8, 0.5)
					return true end }))
				update_hand_text({delay = 0}, {mult = '+', StatusText = true})
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					card:juice_up(0.8, 0.5)
					return true end }))
				update_hand_text({delay = 0}, {chips = '+', StatusText = true})
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					card:juice_up(0.8, 0.5)
					return true end }))
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {level='+1'})
				delay(1.3)
				for k, v in pairs(G.GAME.hands) do
					level_up_hand(card, k, true)
				end
				update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
			end

			ease_dollars(G.GAME.skips)
			return {
				message = localize('$')..G.GAME.skips,
				colour = G.C.MONEY,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--yeti
SMODS.Joker{
	key = "yeti",
	config = { extra = { x_mult_mod = 0.25, x_mult = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'yeti',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_mult = card.ability.extra.x_mult,
				card = card
			}
		end

		if context.using_consumeable and context.consumeable.ability.set == 'Timewarp' and not context.blueprint then
			card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod
			return {
				message = localize('k_upgrade_ex'),
				card = card,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult_mod, card.ability.extra.x_mult }, key = self.key }
	end
}

--mrIceBlock
SMODS.Joker{
	key = "mrIceBlock",
	config = { extra = { chips_mod = 5, chips = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'mrIceBlock',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			card.ability.extra.chips = 0
			for k, v in pairs(G.playing_cards) do
				if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_mod end
			end
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				chips = card.ability.extra.chips,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips_mod, card.ability.extra.chips }, key = self.key }
	end
}

--eviltux
SMODS.Joker{
	key = "eviltux",
	config = { repetitions = 0 },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'eviltux',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if card.ability.repetitions > 0 and (context.other_card == context.scoring_hand[1] or context.other_card == context.scoring_hand[#context.scoring_hand]) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.repetitions,
					card = card
				}
			end
		end

		if context.using_consumeable and context.consumeable.ability.set == 'Powerup' and not context.blueprint then
			card.ability.repetitions = card.ability.repetitions + 1
			return {
				message = localize('k_upgrade_ex'),
				card = card,
				colour = G.C.PURPLE
			}
		end

		if context.end_of_round and G.GAME.blind.boss and card.ability.repetitions > 0 and not context.blueprint then
			card.ability.repetitions = 0
			return {
				message = localize('k_reset'),
				colour = G.C.PURPLE
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.repetitions }, key = self.key }
	end
}

--elephpant
SMODS.Joker{
	key = "elephpant",
	config = { extra = { chips_mod = 10, mult_mod = 3 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'elephpant',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			local chips = card.ability.extra.chips_mod
			local mult = card.ability.extra.mult_mod
			if context.scoring_name == 'High Card'				then chips = chips * 9; mult = mult * 9;
			elseif context.scoring_name == 'Pair'				then chips = chips * 8; mult = mult * 8;
			elseif context.scoring_name == 'Two Pair'			then chips = chips * 7; mult = mult * 7;
			elseif context.scoring_name == 'Three of a Kind'	then chips = chips * 6; mult = mult * 6;
			elseif context.scoring_name == 'Straight'			then chips = chips * 5; mult = mult * 5;
			elseif context.scoring_name == 'Flush'				then chips = chips * 5; mult = mult * 5;
			elseif context.scoring_name == 'Full House'			then chips = chips * 4; mult = mult * 4;
			elseif context.scoring_name == 'Four of a Kind'		then chips = chips * 3; mult = mult * 3;
			elseif context.scoring_name == 'Straight Flush'		then chips = chips * 2; mult = mult * 2;
			elseif context.scoring_name == 'Flush House'		then chips = chips * 1; mult = mult * 1;
			elseif context.scoring_name == 'Five of a Kind'		then chips = chips * 1; mult = mult * 1;
			elseif context.scoring_name == 'Flush Five'			then chips = chips * 1; mult = mult * 1;
			end
			return {
				chips = chips,
				mult = mult,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips_mod, card.ability.extra.mult_mod }, key = self.key }
	end
}

--mozilla
SMODS.Joker{
	key = "mozilla",
	config = { extra = { x_chips = 4, poker_hand = '[Poker Hand]' } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'mozilla',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	add_to_deck = function(self, card, from_debuff)
		card.ability.extra.poker_hand = 'High Card'
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			if context.scoring_name == card.ability.extra.poker_hand then
				return {
					x_chips = card.ability.extra.x_chips,
					card = card
				}
			end
		end

		if context.after and context.cardarea == G.jokers and not context.blueprint then
			local _poker_hands = {}
			for k, v in pairs(G.GAME.hands) do
				if v.visible and k ~= card.ability.extra.poker_hand then _poker_hands[#_poker_hands+1] = k end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, pseudoseed('mozilla'))
			return {
				message = localize('k_reset')
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_chips, card.ability.extra.poker_hand }, key = self.key }
	end
}

--gooey
SMODS.Joker{
	key = "gooey",
	config = { extra = { hands = 5, reduce = 0.5 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'gooey',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers and not context.before and not context.after and hand_chips and mult then
			hand_chips = mod_chips(math.floor(hand_chips * card.ability.extra.reduce))
			update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
			return {
				message = 'Reduced',
				card = card,
				colour = G.C.CHIPS
			}
		end

		if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
			G.E_MANAGER:add_event(Event({func = function()
				ease_hands_played(card.ability.extra.hands)
				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hands}}})
			return true end }))
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hands, card.ability.extra.reduce * 100 }, key = self.key }
	end
}

--beagle
SMODS.Joker{
	key = "beagle",
	config = { extra = { mult_mod = 1, mult = 0 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'beagle',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			card.ability.extra.mult = card.ability.extra.mult_mod * G.GAME.unused_discards
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				mult = card.ability.extra.mult,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult_mod, card.ability.extra.mult }, key = self.key }
	end
}

--beastie
SMODS.Joker{
	key = "beastie",
	config = { extra = { x_chips = 1, x_mult = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'beastie',
	in_pool = function(self, args)
		return (    not args 
					or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'uta' 
					or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'wra' ) and true
	end,

	update = function(self, card, dt)
		if G.STAGE == G.STAGES.RUN then
			card.ability.extra.x_chips = 1 + math.floor((G.GAME.round_scores.cards_played.amt + G.GAME.round_scores.times_rerolled.amt) / 3) * 0.01
			card.ability.extra.x_mult = 1 + math.floor((G.GAME.round_scores.cards_discarded.amt + G.GAME.round_scores.cards_purchased.amt) / 3) * 0.01
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_chips = card.ability.extra.x_chips,
				x_mult = card.ability.extra.x_mult,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_chips, card.ability.extra.x_mult }, key = self.key }
	end
}

--hexley
SMODS.Joker{
	key = "hexley",
	config = { },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 3,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'hexley',

	calculate = function(self, card, context)
		if context.joker_main and not context.before and not context.after and hand_chips and mult then
			local mult25 = mult * 0.25
			hand_chips = mod_chips(hand_chips + mult25)
			mult = mod_mult(mult - mult25)
			update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
			return {
				message = localize('k_hexley'),
				colour = G.C.SECONDARY_SET.Planet
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--kiki
SMODS.Joker{
	key = "kiki",
	config = { extra = { num = 1, den = 6 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 4,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'kiki',

	calculate = function(self, card, context)
		if context.using_consumeable and (context.consumeable.ability.set == 'Powerup' or context.consumeable.ability.set == 'Timewarp') then
			if SMODS.pseudorandom_probability(self, "kikiSeed", card.ability.extra.num, card.ability.extra.den, 'kikiIdef') then
				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('Flush', 'poker_hands'),chips = G.GAME.hands['Flush'].chips, mult = G.GAME.hands['Flush'].mult, level=G.GAME.hands['Flush'].level})
				level_up_hand(context.blueprint_card or card, 'Flush', nil, 1)
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('Straight Flush', 'poker_hands'),chips = G.GAME.hands['Straight Flush'].chips, mult = G.GAME.hands['Straight Flush'].mult, level=G.GAME.hands['Straight Flush'].level})
				level_up_hand(context.blueprint_card or card, 'Straight Flush', nil, 1)
				update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'kikiIdef')
		return { vars = { num, den }, key = self.key }
	end
}

--pepper
SMODS.Joker{
	key = "pepper",
	config = { extra = { mult = 0, mult_mod = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'pepper',

	calculate = function(self, card, context)
		if context.buying_card and not context.blueprint then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
			return {
				message = localize('k_upgrade_ex'),
				card = card,
				colour = G.C.RED
			}
		end

		if context.joker_main and context.cardarea == G.jokers then
			return {                                     
				mult = card.ability.extra.mult,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.mult_mod }, key = self.key }
	end
}

--wilber
SMODS.Joker{
	key = "wilber",
	config = { extra = { moving = true } },
	pos = { x = 0, y = 0 },
	rarity = 1,
	cost = 3,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'wilber',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers then
			card.ability.extra.moving = true
		end

		if context.individual and context.cardarea == G.play and card.ability.extra.moving and not context.blueprint and hand_chips and mult then
			local chips1 = hand_chips - 1
			hand_chips = mod_chips(1)
			mult = mod_mult(mult + chips1)
			update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
			card.ability.extra.moving = false
			return {
				message = localize('k_wilber'),
				colour = G.C.ORANGE
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--adiumy
SMODS.Joker{
	key = "adiumy",
	config = { repetitions = 1 },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'adiumy',

	calculate = function(self, card, context)
		if context.cardarea == G.play and context.repetition and (context.other_card:is_suit("Clubs") or context.other_card.ability.name == 'Wild Card') then
			return {
				message = localize('k_again_ex'),
				repetitions = card.ability.repetitions,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--emule
SMODS.Joker{
	key = "emule",
	config = { extra = { weShopping = false, num = 1, den = 2 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'emule',

	calculate = function(self, card, context)
		if context.buying_card then
			if context.card.ability.set == 'Tarot' then
				if SMODS.pseudorandom_probability(self, "emuleSeed", card.ability.extra.num, card.ability.extra.den, 'emuleIdef') then
					ease_dollars(context.card.cost)
					return {
						message = localize('$')..context.card.cost,
						colour = G.C.MONEY,
						card = card
					}
				end
			end
		end
		if context.end_of_round then
			card.ability.extra.weShopping = true
		end

		if context.ending_shop then
			card.ability.extra.weShopping = false
		end
		if context.open_booster and card.ability.extra.weShopping then
			if context.card.ability.name:find('Arcana') then
				if SMODS.pseudorandom_probability(self, "emuleSeed", card.ability.extra.num, card.ability.extra.den, 'emuleIdef') then
					ease_dollars(context.card.cost)
					return {
						message = localize('$')..context.card.cost,
						colour = G.C.MONEY,
						card = card
					}
				end
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		local num, den = SMODS.get_probability_vars(self, card.ability.extra.num, card.ability.extra.den, 'emuleIdef')
		return { vars = { num, den }, key = self.key }
	end
}

--gavroche
SMODS.Joker{
	key = "gavroche",
	config = { extra = { wilds = 2 }},
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'gavroche',

	calculate = function(self, card, context)
		if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
			for i = 1, card.ability.extra.wilds do
				local _suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('gavroche'))
				create_playing_card({front = G.P_CARDS[_suit .. '_J'], center = G.P_CENTERS.m_wild},G.deck)
				playing_card_joker_effects({true})
			end
			card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_wild_jacks'), colour = G.C.PURPLE})
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.dollars }, key = self.key }
	end
}

--konqi
SMODS.Joker{
	key = "konqi",
	config = { extra = { xchips = 3, stones = 3 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 3,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'konqi',

	calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			local nStones = 0
			for _, hCard in ipairs(G.play.cards) do
				if (hCard.ability.name == 'Stone Card') then
					nStones = nStones + 1
				end
			end
			if nStones >= card.ability.extra.stones then
				return {
					x_chips = card.ability.extra.xchips,
					colour = G.C.CHIPS,
					card = card
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips, card.ability.extra.stones }, key = self.key }
	end
}

function getMostFrequentCard()
	local counts = {}
	for k, v in pairs(G.playing_cards) do
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
		local key = suit .. '_' .. value

		if not counts[key] then counts[key] = { count = 0, card = nil } end
		counts[key].count = counts[key].count + 1
		counts[key].card = v
	end

	local max_count = 0
	local most_frequent_card = nil

	for key, data in pairs(counts) do
		if data.count > max_count then
			max_count = data.count
			most_frequent_card = data.card
		end
	end

	return most_frequent_card
end

--sara
SMODS.Joker{
	key = "sara",
	config = {  },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'sara',

	calculate = function(self, card, context)
		if context.skipping_booster then
			G.playing_card = (G.playing_card and G.playing_card + 1) or 1
			local _card = copy_card(getMostFrequentCard(), nil, nil, G.playing_card)
			_card:add_to_deck()
			G.deck.config.card_limit = G.deck.config.card_limit + 1
			table.insert(G.playing_cards, _card)
			G.deck:emplace(_card)
			_card:start_materialize(nil, false)
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--suzanne
SMODS.Joker{
	key = "suzanne",
	config = {  },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'suzanne',

	calculate = function(self, card, context)
		if context.discard and not context.blueprint and #context.full_hand == 1 then
			return {
				message = localize('k_destroyed'),
				colour = G.C.MONEY,
				delay = 0.45,
				remove = true,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { }
	end
}

--xue
SMODS.Joker{
	key = "xue",
	config = { extra = { x_mult = 1 } },
	pos = { x = 0, y = 0 },
	rarity = 2,
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'xue',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_mult = card.ability.extra.x_mult,
				colour = G.C.MULT
			}
		end

		if context.setting_blind and not card.getting_sliced and not context.blueprint then
			local _rarity = -99999
			local buffUp = true
			for i = 1, #G.jokers.cards do
				if G.jokers.cards[i].config.center.rarity ~= _rarity and buffUp then
					card.ability.extra.x_mult = card.ability.extra.x_mult + G.jokers.cards[i].config.center.rarity / 10
					_rarity = G.jokers.cards[i].config.center.rarity
				else
					buffUp = false
				end
			end
			return {
				extra = {focus = card, message = localize('k_upgrade_ex')},
				card = card,
				colour = G.C.RED
			}
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			card.ability.extra.x_mult = 1
			return {
				card = card,
				message = localize('k_reset')
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult }, key = self.key }
	end
}

--amanda
SMODS.Joker{
	key = "amanda",
	config = { extra = { opened = 0, reqs = 5 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'amanda',

	calculate = function(self, card, context)
		if context.open_booster and not context.blueprint then
			card.ability.extra.opened = card.ability.extra.opened + 1
			if card.ability.extra.opened == card.ability.extra.reqs then
				local my_pos = nil
				for i = 1, #G.jokers.cards do
					if G.jokers.cards[i] == card then my_pos = i; break end
				end
				if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
					local sliced_card = G.jokers.cards[my_pos+1]
					sliced_card.getting_sliced = true
					G.GAME.joker_buffer = G.GAME.joker_buffer - 1
					G.E_MANAGER:add_event(Event({
						func = function()
							G.GAME.joker_buffer = 0
							card:juice_up(0.8, 0.8)
							sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
							play_sound('slice1', 0.96+math.random()*0.08)
							return true
						end
					}))
					for i = 1, #G.jokers.cards do
						if G.jokers.cards[i] == card then my_pos = i; break end
					end
					if my_pos and G.jokers.cards[my_pos-1] and #G.jokers.cards <= G.jokers.config.card_limit then
						card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
						local chosen_joker = G.jokers.cards[my_pos-1]
						local _card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
						_card:add_to_deck()
						G.jokers:emplace(_card)
					end
				end
				card.ability.extra.opened = 0
			end
			if card.ability.extra.opened == card.ability.extra.reqs - 1 then 
				local eval = function(card) return card.ability.extra.opened == card.ability.extra.reqs - 1 end
				juice_card_until(card, eval, true)
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.opened, card.ability.extra.reqs }, key = self.key }
	end
}

--godette
SMODS.Joker{
	key = "godette",
	config = { extra = { dollars = 2 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 9,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'godette',

	calculate = function(self, card, context)
		if context.discard and not context.other_card.debuff and not context.other_card:is_face() then
			ease_dollars(card.ability.extra.dollars)
			return {
				message = localize('$')..card.ability.extra.dollars,
				colour = G.C.MONEY,
				card = card
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.dollars }, key = self.key }
	end
}

--pidgin
SMODS.Joker{
	key = "pidgin",
	config = { extra = { reduction = 0, reduction_mod = 0.01 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 7,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'pidgin',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and not context.blueprint then
			for i = 1, #context.scoring_hand do
				if (context.scoring_hand[i].base.suit == 'Spades' or context.scoring_hand[i].ability.name == 'Wild Card') and context.scoring_hand[i].ability.name ~= 'Stone Card' then
					card.ability.extra.reduction = math.min(card.ability.extra.reduction + card.ability.extra.reduction_mod, 0.99)
				end
			end
			G.GAME.blind.chips = G.GAME.blind.chips - math.ceil(G.GAME.blind.chips * card.ability.extra.reduction)
			G.GAME.blind.chip_text = G.GAME.blind.chips
			return {
				message = localize('k_reduced'),
				colour = G.C.PURPLE,
				card = card
			}
		end

		if context.end_of_round and G.GAME.blind.boss and card.ability.extra.reduction > 0 and not context.blueprint then
			card.ability.extra.reduction = 0
			return {
				message = localize('k_reset'),
				colour = G.C.PURPLE
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.reduction * 100, card.ability.extra.reduction_mod * 100 }, key = self.key }
	end
}

--puffy
SMODS.Joker{
	key = "puffy",
	config = { extra = { x_mult = 2 } },
	pos = { x = 0, y = 0 },
	rarity = 3,
	cost = 8,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = nil,
	atlas = 'puffy',

	calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			if (context.scoring_name == 'High Card' or context.scoring_name == 'Pair' or context.scoring_name == 'Two Pair') then
				local canPowerup = false
				--[[ for _, hCard in ipairs(G.play.cards) do
					if (hCard.base.value == '6' or hCard.base.value == '7' or hCard.base.value == '8' or hCard.base.value == '9' or hCard.base.value == '10') then
						canPowerup = true
					end
				end ]]
				for i = 1, #context.scoring_hand do
					if (context.scoring_hand[i].base.value == '6' or context.scoring_hand[i].base.value == '7' or context.scoring_hand[i].base.value == '8' or context.scoring_hand[i].base.value == '9' or context.scoring_hand[i].base.value == '10') then
						canPowerup = true
					end
				end
				if canPowerup then
					local creating = math.floor(math.min(1, G.consumeables.config.card_limit - (#G.consumeables.cards + G.GAME.consumeable_buffer)))
					for i = 1, creating do
						G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
						G.E_MANAGER:add_event(Event({
							func = function()
								local gb = SMODS.create_card({
									set = 'Powerup',
									area = G.consumeables })
								gb:add_to_deck()
								G.consumeables:emplace(gb)
								G.GAME.consumeable_buffer = 0
								return true
							end
						}))
					end
					return {
						message = localize('k_nolok'),
						colour = G.C.RED,
						card = card,
						x_mult = card.ability.extra.x_mult
					}
				end
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult }, key = self.key }
	end
}

--gnu
SMODS.Joker{
	key = "gnu",
	config = { extra = { began = false, rounds = 0, copies = {} }},
	pos = { x = 0, y = 0 },
	rarity = 4,
	cost = 20,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = { x = 0, y = 1 },
	atlas = 'gnu',

	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and context.scoring_name == 'High Card' and not card.ability.extra.began and not context.blueprint then
			shakecard(card)
			card.ability.extra.began = true
			local moneyEasing = math.min(25, math.floor(G.GAME.dollars * 0.5))
			ease_dollars(moneyEasing)
			return {
				message = localize('$')..moneyEasing,
				colour = G.C.MONEY,
				card = card
			}
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and card.ability.extra.began then
			card.ability.extra.rounds = card.ability.extra.rounds + 1
			if card.ability.extra.rounds >= 2 then
				local eval = function(card) return card.ability.extra.rounds >= 2 end
				juice_card_until(card, eval, true)
			end
		end

		if context.selling_card and card.ability.extra.began and card.ability.extra.rounds < 2 and not context.selling_self and not context.blueprint then
			id = #card.ability.extra.copies + 1
			card.ability.extra.copies[id] = { set = nil, area = nil, key = nil, mater = nil }
			card.ability.extra.copies[id].set = context.card.ability.set
			card.ability.extra.copies[id].key = context.card.config.center_key
			shakecard(card)
		end

		if context.selling_self and card.ability.extra.rounds >= 2 and not context.blueprint  then
			for i = 1, #card.ability.extra.copies do
				G.E_MANAGER:add_event(Event({
					func = function()
						local _area = nil
						local _mater = nil
						if card.ability.extra.copies[i].set == 'Joker' then
							_area = G.jokers
							_mater = true
						else
							_area = G.consumeables
							_mater = false
						end
						local ghost = SMODS.create_card({
							set = card.ability.extra.copies[i].set,
							area = _area,
							key = card.ability.extra.copies[i].key})
						ghost:add_to_deck()
						if _mater then
							ghost:start_materialize()
						end
						_area:emplace(ghost)
						ghost:set_edition({negative = true})
						return true
					end
				}))
			end
			card.ability.extra.rounds = 0
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.rounds }, key = self.key }
	end
}

--nolok
SMODS.Joker{
	key = "nolok",
	config = { extra = { stones = 2 } },
	pos = { x = 0, y = 0 },
	rarity = 4,
	cost = 20,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = { x = 0, y = 1 },
	atlas = 'nolok',

	calculate = function(self, card, context)
		if context.open_booster then
			local stone_tally = 0
			for k, v in pairs(G.playing_cards) do
				if v.ability.name == 'Stone Card' then stone_tally = stone_tally + 1 end
			end
			local iters = math.floor(stone_tally / 2)
			if iters > 0 then
				G.E_MANAGER:add_event(Event({
					func = function()
						for i = 1, math.min(3, iters) do
							local stkItem = SMODS.create_card({
								set = pseudorandom_element({'Powerup','Powerup','Timewarp'}, pseudoseed('nolok')),
								area = G.consumeables})
							stkItem:add_to_deck()
							G.consumeables:emplace(stkItem)
							stkItem:set_edition({negative = true})
						end
						return true
					end
				}))
				return {
					message = localize('k_nolok'),
					colour = G.C.GREY,
					card = card
				}
			end
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.stones }, key = self.key }
	end
}

--tux
SMODS.Joker{
	key = "tux",
	config = { extra = { x_mult = 1, x_mult_mod = 0.1 } },
	pos = { x = 0, y = 0 },
	rarity = 4,
	cost = 20,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	unlocked = true,
	discovered = true,
	effect = nil,
	soul_pos = { x = 0, y = 1 },
	atlas = 'tux',

	calculate = function(self, card, context)
		if context.joker_main and context.cardarea == G.jokers then
			return {
				x_mult = card.ability.extra.x_mult,
				colour = G.C.MULT
			}
		end

		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod * (1 + G.GAME.current_round.hands_left)
			return {
				extra = {focus = card, message = localize('k_upgrade_ex')},
				card = card,
				colour = G.C.RED
			}
		end
	end,

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.x_mult_mod }, key = self.key }
	end
}
