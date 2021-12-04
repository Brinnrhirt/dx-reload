ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("dx-reload:checkInventory")
AddEventHandler("dx-reload:checkInventory", function(itemCheck)
    local xPlayer = ESX.GetPlayerFromId(source)
    if itemCheck == "AMMO_PISTOL" then
        if xPlayer.getInventoryItem(Config.PistolItem).count >= 1 then
        TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end
    elseif itemCheck == "AMMO_SMG" then
        if xPlayer.getInventoryItem(Config.SMGItem).count >= 1  then
            TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end 
    elseif itemCheck == "AMMO_RIFLE" then
        if xPlayer.getInventoryItem(Config.RifleItem).count >= 1 then
            TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end 
        
    elseif itemCheck == "AMMO_SHOTGUN" then
        if xPlayer.getInventoryItem(Config.ShotgunItem).count >= 1 then
            TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end 
    elseif itemCheck == "AMMO_SNIPER" then
        if xPlayer.getInventoryItem(Config.SniperItem).count >= 1 then
            TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end 
    elseif itemCheck == "AMMO_MG" then
        if xPlayer.getInventoryItem(Config.MGItem).count >= 1 then
            TriggerClientEvent("dx-reload:reload", source, true)   
        else
            TriggerClientEvent("dx-reload:reload", source, false)
        end
        --add more types of ammo here / agrega mas tipos de arma aqui 
    end
end)

RegisterNetEvent("dx-reload:removeAmmoBox")
AddEventHandler("dx-reload:removeAmmoBox", function(type)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if type == "AMMO_PISTOL" then
        xPlayer.removeInventoryItem(Config.PistolItem, 1)
    elseif type == "AMMO_SMG" then
        xPlayer.removeInventoryItem(Config.SMGItem, 1)
    elseif type == "AMMO_RIFLE" then
        xPlayer.removeInventoryItem(Config.RifleItem, 1)
    elseif type == "AMMO_SHOTGUN" then
        xPlayer.removeInventoryItem(Config.ShotgunItem, 1)
    elseif type == "AMMO_SNIPER" then
        xPlayer.removeInventoryItem(Config.SniperItem, 1)
    elseif type == 'AMMO_MG' then
        xPlayer.removeInventoryItem(Config.MGItem, 1)
        --add more types of ammo here / agrega mas tipos de arma aqui
    end
    
end)