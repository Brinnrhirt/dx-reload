Config = {}
Config.Locale = 'es'

Config.PistolItem = "pistol_ammo"           
Config.SMGItem = "smg_ammo"   
Config.RifleItem = "rifle_ammo"   
Config.ShotgunItem = "shotgun_ammo"   
Config.SniperItem = "sniper_ammo" 
Config.MGItem = "mg_ammo" 

Config.SpamDelay = 1500                 --If trigger and error; How long delay until next trigger.
Config.CheckAndApplyAmmo = true         --Weapons that have ammo beyond the clip gets its ammo automatically removed.
Config.DisableWeaponMeleeHit = true     --Remove melee hits while wielding a weapon.

Config.NotificationStyle = "ESX"        --"ESX" or "CUSTOM"; Edit below to change the notification.


RegisterNetEvent('dx-reload:notification')
AddEventHandler('dx-reload:notification', function(msg,type)
--	Types used: (error | success)
	--exports['mythic_notify']:DoHudText(type,msg)
    -- ESX.ShowNotification(msg)
    exports.dxNotify:SendNotification({                    
        text = '<b><i class="fas fa-bell"></i> NOTIFICACIÓN</span></b></br><span style="color: #a9a29f;">'..msg..'',
        type = type,
        timeout = 3000,
        layout = "centerRight"
    })
end)


Config.Weapons = {
	[GetHashKey("weapon_unarmed")] 				 = {["ammotype"] = nil 				    },
	[GetHashKey("weapon_knife")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_nightstick")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_hammer")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_bat")] 					 = {["ammotype"] = nil					},
	[GetHashKey("weapon_golfclub")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_crowbar")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_pistol")] 				 = {["ammotype"] = "AMMO_PISTOL"		}, -- You can change the type of ammo
	[GetHashKey("weapon_pistol_mk2")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_combatpistol")] 		 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_appistol")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_pistol50")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_microsmg")] 			 = {["ammotype"] = "AMMO_SMG"			},
	[GetHashKey("weapon_smg")] 				 	 = {["ammotype"] = "AMMO_SMG"			},
	[GetHashKey("weapon_assaultsmg")] 			 = {["ammotype"] = "AMMO_SMG"			},
	[GetHashKey("weapon_assaultrifle")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_carbinerifle")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_advancedrifle")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_mg")] 					 = {["ammotype"] = "AMMO_MG"			},
	[GetHashKey("weapon_combatmg")] 			 = {["ammotype"] = "AMMO_MG"			},
	[GetHashKey("weapon_pumpshotgun")] 			 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_sawnoffshotgun")] 		 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_assaultshotgun")] 		 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_bullpupshotgun")] 		 = {["ammotype"] = "AMMO_SHOTGUN"		},
    [GetHashKey("weapon_stungun")] 				 = {["ammotype"] = nil					},
    [GetHashKey("weapon_flashlight")] 			 = {["ammotype"] = nil				    },
	[GetHashKey("weapon_sniperrifle")] 			 = {["ammotype"] = "AMMO_SNIPER"		},
	[GetHashKey("weapon_heavysniper")] 			 = {["ammotype"] = "AMMO_SNIPER"		},
	[GetHashKey("weapon_remotesniper")] 		 = {["ammotype"] = "AMMO_SNIPER_REMOTE"},
	[GetHashKey("weapon_grenadelauncher")] 		 = {["ammotype"] = "AMMO_GRENADELAUNCHER"},
	[GetHashKey("weapon_grenadelauncher_smoke")] = {["ammotype"] = "AMMO_GRENADELAUNCHER"},
	[GetHashKey("weapon_rpg")] 					 = {["ammotype"] = "AMMO_RPG"			},
	[GetHashKey("weapon_minigun")] 				 = {["ammotype"] = "AMMO_MINIGUN"		},
	[GetHashKey("weapon_grenade")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_stickybomb")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_smokegrenade")] 		 = {["ammotype"] = nil					},
	[GetHashKey("weapon_bzgas")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_molotov")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_fireextinguisher")] 	 = {["ammotype"] = nil					},
	[GetHashKey("weapon_petrolcan")] 			 = {["ammotype"] = "AMMO_PETROLCAN"	    },
	[GetHashKey("weapon_briefcase")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_briefcase_02")] 		 = {["ammotype"] = nil					},
	[GetHashKey("weapon_ball")] 				 = {["ammotype"] = "AMMO_BALL",			},
	[GetHashKey("weapon_flare")] 				 = {["ammotype"] = "AMMO_FLARE"		    },
	[GetHashKey("weapon_snspistol")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_bottle")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_gusenberg")] 			 = {["ammotype"] = "AMMO_MG"			},
	[GetHashKey("weapon_specialcarbine")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_heavypistol")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_bullpuprifle")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_dagger")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_vintagepistol")] 		 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_firework")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_musket")] 			     = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_heavyshotgun")] 		 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_marksmanrifle")] 		 = {["ammotype"] = "AMMO_SNIPER"		},
	[GetHashKey("weapon_hominglauncher")] 		 = {["ammotype"] = "AMMO_STINGER"		},
	[GetHashKey("weapon_proxmine")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_snowball")] 		     = {["ammotype"] = nil					},
	[GetHashKey("weapon_flaregun")] 			 = {["ammotype"] = "AMMO_FLARE"		    },
	[GetHashKey("weapon_garbagebag")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_handcuffs")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_combatpdw")] 			 = {["ammotype"] = "AMMO_SMG"			},
	[GetHashKey("weapon_marksmanpistol")] 		 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_knuckle")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_hatchet")] 				 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_railgun")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_machete")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_machinepistol")] 		 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_switchblade")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_revolver")] 			 = {["ammotype"] = "AMMO_PISTOL"		},
	[GetHashKey("weapon_dbshotgun")] 			 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_compactrifle")] 		 = {["ammotype"] = "AMMO_RIFLE"		    },
	[GetHashKey("weapon_autoshotgun")] 			 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_battleaxe")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_compactlauncher")] 		 = {["ammotype"] = nil					},
	[GetHashKey("weapon_minismg")] 				 = {["ammotype"] = "AMMO_SMG"			},
	[GetHashKey("weapon_pipebomb")] 			 = {["ammotype"] = nil					},
	[GetHashKey("weapon_poolcue")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_wrench")] 				 = {["ammotype"] = nil					},
	[GetHashKey("weapon_autoshotgun")] 		 	 = {["ammotype"] = "AMMO_SHOTGUN"		},
	[GetHashKey("weapon_bread")] 				 = {["ammotype"] = nil					},
}
