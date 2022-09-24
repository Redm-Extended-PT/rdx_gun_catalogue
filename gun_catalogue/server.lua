RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

local weapons = {
	[1] = { ['weapon'] = 'WEAPON_REVOLVER_CATTLEMAN', ["PRICE"] = 13, ['label'] = 'Cattleman Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[2] = { ['weapon'] = 'WEAPON_REVOLVER_DOUBLEACTION', ["PRICE"] = 15, ['label'] = 'Double-Action Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[3] = { ['weapon'] = 'WEAPON_REVOLVER_SCHOFIELD', ["PRICE"] = 17, ['label'] = 'Schofield Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[4] = { ['weapon'] = 'WEAPON_REVOLVER_LEMAT', ["PRICE"] = 25, ['label'] = 'LeMat Revolver', ['AMMOlabel'] = 'revolver ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[5] = { ['weapon'] = 'WEAPON_PISTOL_VOLCANIC', ["PRICE"] = 25, ['label'] = 'Volcanic Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[6] = { ['weapon'] = 'WEAPON_PISTOL_SEMIAUTO', ["PRICE"] = 40, ['label'] = 'Semi-Automatic Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[7] = { ['weapon'] = 'WEAPON_PISTOL_MAUSER', ["PRICE"] = 45, ['label'] = 'Mauser Pistol', ['AMMOlabel'] = 'pistol ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 24},
	[8] = { ['weapon'] = 'WEAPON_REPEATER_CARBINE', ["PRICE"] = 60, ['label'] = 'Carbine Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 16},
	[9] = { ['weapon'] = 'WEAPON_REPEATER_WINCHESTER', ["PRICE"] = 63, ['label'] = 'Lancaster Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 16},
	[10] = { ['weapon'] = 'WEAPON_REPEATER_EVANS', ["PRICE"] = 63, ['label'] = 'Carbine Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 16},
	[11] = { ['weapon'] = 'WEAPON_REPEATER_HENRY', ["PRICE"] = 65, ['label'] = 'Litchfield Repeater', ['AMMOlabel'] = 'repeater ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 16},
	[12] = { ['weapon'] = 'WEAPON_RIFLE_VARMINT', ["PRICE"] = 35, ['label'] = 'Varmint Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 12},
	[13] = { ['weapon'] = 'WEAPON_RIFLE_SPRINGFIELD', ["PRICE"] = 55, ['label'] = 'Springfield Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 12},
	[14] = { ['weapon'] = 'WEAPON_RIFLE_BOLTACTION', ["PRICE"] = 65, ['label'] = 'Bolt-Action Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 12},
	[15] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK', ["PRICE"] = 75, ['label'] = 'Rolling-Block Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 12,["AMMO_AMOUNT"] = 12},
	[16] = { ['weapon'] = 'WEAPON_SNIPERRIFLE_CARCANO', ["PRICE"] = 70, ['label'] = 'Carcano Rifle', ['AMMOlabel'] = 'rifle ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 12},
	[17] = { ['weapon'] = 'WEAPON_SHOTGUN_SAWEDOFF', ["PRICE"] = 25, ['label'] = 'Sawed-Off Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 8},
	[18] = { ['weapon'] = 'WEAPON_SHOTGUN_DOUBLEBARREL', ["PRICE"] = 33, ['label'] = 'Double-Barrel Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 8},
	[19] = { ['weapon'] = 'WEAPON_SHOTGUN_PUMP', ["PRICE"] = 40, ['label'] = 'Pump-Action Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 8},
	[20] = { ['weapon'] = 'WEAPON_SHOTGUN_REPEATING', ["PRICE"] = 43, ['label'] = 'Repeating Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 8},
	[21] = { ['weapon'] = 'WEAPON_SHOTGUN_SEMIAUTO', ["PRICE"] = 45, ['label'] = 'Semi-Automatic Shotgun', ['AMMOlabel'] = 'shotgun ammo', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 8},
	[22] = { ['weapon'] = 'WEAPON_BOW', ["PRICE"] = 20, ['label'] = 'Hunting Bow', ['AMMOlabel'] = 'arrows', ["AMMOPRICE"] = 10,["AMMO_AMOUNT"] = 20},
	[23] = { ['weapon'] = 'WEAPON_LASSO', ["PRICE"] = 5, ['label'] = 'Lasso', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[24] = { ['weapon'] = 'WEAPON_MELEE_BROKEN_SWORD', ["PRICE"] = 20, ['label'] = 'Antique Sword', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[25] = { ['weapon'] = 'WEAPON_MELEE_LANTERN', ["PRICE"] = 10, ['label'] = 'Lantern', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[26] = { ['weapon'] = 'WEAPON_MELEE_HATCHET', ["PRICE"] = 15, ['label'] = 'Hatchet', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[27] = { ['weapon'] = 'WEAPON_MELEE_KNIFE', ["PRICE"] = 10, ['label'] = 'Hunting Knife', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[28] = { ['weapon'] = 'WEAPON_THROWN_THROWING_KNIVES', ["PRICE"] = 10, ['label'] = 'Throwing Knives', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[29] = { ['weapon'] = 'WEAPON_MELEE_MACHETE', ["PRICE"] = 20, ['label'] = 'Machete', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[30] = { ['weapon'] = 'WEAPON_THROWN_TOMAHAWK', ["PRICE"] = 15, ['label'] = 'Tomahawk', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[31] = { ['weapon'] = 'WEAPON_THROWN_DYNAMITE', ["PRICE"] = 50, ['label'] = 'Dynamite Sticks', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
	[32] = { ['weapon'] = 'WEAPON_THROWN_MOLOTOV', ["PRICE"] = 30, ['label'] = 'Fire Bottles', ['AMMOlabel'] = '', ["AMMOPRICE"] = 0},
}

local code = math.random(111111,9999999)

RegisterNetEvent("gunCatalogue:getCode")
AddEventHandler("gunCatalogue:getCode", function()
	local _source = source
	TriggerClientEvent('gunCatalogue:SendCode', _source, code)
end)

function doesweaponexist(weapon)
	for i = 1,#weapons do
		if weapons[i]['weapon'] == weapon then
			return true
		end
	end
	return false
end

function weapon2(weapon)
	for i = 1,#weapons do
		if weapons[i]['weapon'] == weapon then
			return weapons[i]
		end
	end
	return false
end

RegisterNetEvent("gunCatalogue:Purchase")
AddEventHandler("gunCatalogue:Purchase", function(data,code1,remove)
	local _source = source
	if code == code1 then
		local _source = source
		local xPlayer = RDX.GetPlayerFromId(_source)
		local cash = xPlayer.getMoney()

		    if tonumber(data.isammo) ~= 1 then				
					local weapon2 = weapon2(data.weapon)
				if not xPlayer.hasWeapon(data.weapon) then
					if weapon2 then
						if cash >= weapon2['PRICE'] then						   
                                --xPlayer.removeWeapon(xPlayer.getWeapon())						   
						     	xPlayer.removeMoney(weapon2['PRICE'])
							    xPlayer.addWeapon(data.weapon, weapon2['AMMO_AMOUNT'])
								SetCurrentPedWeapon(xPlayer,data.weapon,true)						     
						else

						end
					end
				end					
			else				
					local weapon2 = weapon2(data.weapon)
					if weapon2 then						
						if cash >= weapon2['AMMOPRICE'] then
						   if xPlayer.hasWeapon(data.weapon) then							  
							    xPlayer.removeMoney(weapon2['AMMOPRICE'])
							    xPlayer.addWeaponAmmo(data.weapon, weapon2['AMMO_AMOUNT'])
							    SetCurrentPedWeapon(xPlayer,data.weapon,true)							
						    else
								
							end 
						end
					end				
			end		
	end
end)
