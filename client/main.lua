ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local sleep = 5
local deepSleep = 100
local superDeepSleep = Config.SpamDelay
local antiSpam = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(sleep)

		if IsPedArmed(PlayerPedId(), 4) then
			local check, hash = GetCurrentPedWeapon(PlayerPedId(), 1)
			local clipSize = GetWeaponClipSize(hash)
			local ammoInWeapon = GetAmmoInPedWeapon(PlayerPedId(), hash)
			local typeammo = Config.Weapons[hash]["ammotype"]
			if Config.CheckAndApplyAmmo then
				if ammoInWeapon > clipSize then
					SetAmmoInClip(PlayerPedId(), hash, 0)
					SetPedAmmo(PlayerPedId(), hash, clipSize)
				end
			end

			if not antiSpam then
				if IsControlJustReleased(0, 45) then
					TriggerServerEvent("dx-reload:checkInventory", typeammo)
				end
			end

			if Config.DisableWeaponMeleeHit then
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
			 	DisableControlAction(1, 142, true)
			end
		else
			Citizen.Wait(deepSleep)
		end
	end
end)

RegisterNetEvent("dx-reload:reload")
AddEventHandler("dx-reload:reload", function(checkItem)
	if IsPedArmed(PlayerPedId(), 4) then
		if true then
			if checkItem then
				local check1, hash = GetCurrentPedWeapon(PlayerPedId(), 1)
				local clipSize = GetWeaponClipSize(hash)
				local typeammo = Config.Weapons[hash]["ammotype"]
				local check2, ammoInClip = GetAmmoInClip(PlayerPedId(), hash)

				if ammoInClip <= 1 then
					SetAmmoInClip(PlayerPedId(), hash, 0)
					SetPedAmmo(PlayerPedId(), hash, clipSize)
					TriggerServerEvent("dx-reload:removeAmmoBox", typeammo)
				else
					if Config.NotificationStyle == "ESX" then
						ESX.ShowNotification(_U('FullClip'))
					else
						TriggerEvent('dx-reload:notification',type,_U('FullClip')) 
					end
					antiSpam = true
					Citizen.Wait(superDeepSleep)
					antiSpam = false
				end
			else
				if Config.NotificationStyle == "ESX" then
					ESX.ShowNotification(_U('NotEnough'))
				else
					TriggerEvent('dx-reload:notification',type,_U('NotEnough')) 
				end
				antiSpam = true
				Citizen.Wait(superDeepSleep)
				antiSpam = false
			end
		end
	end
end)