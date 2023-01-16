return {
	-- currency
	['money'] = {
		label = 'Money',
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['sov_coin'] = {
		label = 'SC',
	},

	-- cards
	['identification'] = {
		label = 'Identification',
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	-- food & beverage
	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = -70 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			cancel = true,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = -45 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You quenched your thirst with cola'
		}
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = -10, thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You... drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = -40 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	-- health & armour
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	-- containers
	['evidencebag'] = {
		label = 'Evidence Bag',
		weight = 1000,
		stack = false,
		close = false,
		consume = 0,
		whitelist = {
			['case'] = true,
			['slug'] = true,
		}
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 10,
		stack = false,
		close = false,
		consume = 0,
		size = {5, 1000}
	},

	['wallet'] = {
		label = 'Wallet',
		weight = 100,
		stack = false,
		close = false,
		consume = 0,
		whitelist = {
			['money'] = true,
			['black_money'] = true,
			['sov_coin'] = true,
			['identification'] = true,
			['mastercard'] = true,
		}
	},

	-- electronics
	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	-- tools
	--saw
	--blowtorch

	['handcuffkey'] = {
		label = 'Handcuff Key',
		weight = 50,
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 300,
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['spikestrip'] = {
		label = 'Spike Strip',
		weight = 1000,
		stack = false,
		client = {
			export = 'ox_police.deploySpikestrip'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	-- evidence
	['case'] = {
		label = 'Case',
	},

	['slug'] = {
		label = 'Slug',
	},

	-- other
	['garbage'] = {
		label = 'Garbage',
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = 50, stress = -25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},
}
