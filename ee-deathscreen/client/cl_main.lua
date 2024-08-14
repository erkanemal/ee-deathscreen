local dead = false

local weaponAttachments = {
    [`WEAPON_M133`] = {
        [`w_ar_m133_mag1`] = false,
        [`w_ar_m133_mag2`] = false,
        [`w_at_ar_m133_grip`] = false,
        [`w_at_ar_m133_scope`] = false,
        [`w_at_ar_m133_supp`] = false,
    },
    [`WEAPON_MINIUZI`] = {
        [`COMPONENT_MARKOMODSUZI_STOCK_01`] = false,
        [`COMPONENT_MARKOMODSUZI_STOCK_02`] = false,
        [`COMPONENT_MARKOMODSUZI_SUPP_01`] = false,
        [`COMPONENT_MARKOMODSUZI_SUPP_02`] = false,
        [`COMPONENT_MARKOMODSUZI_CLIP_01`] = false,
        [`COMPONENT_MARKOMODSUZI_CLIP_02`] = false,
        [`COMPONENT_MARKOMODSUZI_CLIP_03`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_01`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_02`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_03`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_04`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_05`] = false,
        [`COMPONENT_MARKOMODSUZI_SCOPE_06`] = false,
    },
    [`WEAPON_AKPU`] = {
        [`w_ar_akpu_mag1`] = false,
        [`w_ar_akpu_mag2`] = false,
        [`w_at_ar_akpu_supp`] = false,
        [`w_at_ar_akpu_scope`] = false,
        [`w_at_ar_akpu_grip`] = false,
    },
    [`WEAPON_benellim2`] = {
        [`COMPONENT_MARKOMODSBENELLIM2_TUBE_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_TUBE_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_TUBE_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_TUBE_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_CLIP_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_CLIP_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_CLIP_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_CLIP_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_BARREL_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_BARREL_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_BARREL_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_BARREL_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_BARREL_05`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_STOCK_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_STOCK_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_05`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_06`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_07`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SUPP_08`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_05`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_06`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_FLSH_07`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_01`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_02`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_03`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_04`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_05`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_06`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_07`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_08`] = false,
        [`COMPONENT_MARKOMODSBENELLIM2_SCOPE_09`] = false,
    },
    [`WEAPON_FAR`] = {
        [`w_ar_far_mag1`] = false,
        [`w_ar_far_mag2`] = false,
        [`w_at_ar_far_grip`] = false,
        [`w_at_ar_far_scope`] = false,
        [`w_at_ar_far_supp`] = false,
    },
    [`WEAPON_NEVA`] = {
        [`w_ar_neva_mag1`] = false,
        [`w_ar_neva_mag2`] = false,
        [`w_at_ar_neva_grip`] = false,
        [`w_at_ar_neva_scope`] = false,
        [`w_at_ar_neva_supp`] = false,
    },
    [`WEAPON_VECTOR`] = {
        [`COMPONENT_MARKOMODS_VECTOR_CLIP_1`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_HANDGUARD_1`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_HANDGUARD_2`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_HANDGUARD_3`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_BARREL_1`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_BARREL_2`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_BARREL_3`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_1`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_2`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_3`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_4`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_5`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_6`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_7`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_STOCK_8`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_1`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_2`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_3`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_4`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_5`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_6`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_7`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_8`] = false,
        [`COMPONENT_MARKOMODS_VECTOR_SUPP_9`] = false,
    },
    [`WEAPON_aks74u`] = {
        [`COMPONENT_AKS74U_CLIP_01`] = false,
        [`COMPONENT_AKS74U_CLIP_02`] = false,
        [`COMPONENT_AKS74U_CLIP_03`] = false,
        [`COMPONENT_AKS74U_CLIP_04`] = false,
        [`COMPONENT_AKS74U_CLIP_05`] = false,
        [`COMPONENT_AKS74U_CLIP_06`] = false,
        [`COMPONENT_AKS74U_CLIP_07`] = false,
        [`COMPONENT_AKS74U_CLIP_08`] = false,
        [`COMPONENT_AKS74U_CLIP_09`] = false,
        [`COMPONENT_AKS74U_FLSH_01`] = false,
        [`COMPONENT_AKS74U_FLSH_02`] = false,
        [`COMPONENT_AKS74U_FLSH_03`] = false,
        [`COMPONENT_AKS74U_FLSH_04`] = false,
        [`COMPONENT_AKS74U_FLSH_05`] = false,
        [`COMPONENT_AKS74U_FLSH_06`] = false,
        [`COMPONENT_AKS74U_FLSH_07`] = false,
        [`COMPONENT_AKS74U_FLSH_08`] = false,
        [`COMPONENT_AKS74U_FLSH_09`] = false,
        [`COMPONENT_AKS74U_FLSH_10`] = false,
        [`COMPONENT_AKS74U_GRIP_01`] = false,
        [`COMPONENT_AKS74U_GRIP_02`] = false,
        [`COMPONENT_AKS74U_GRIP_03`] = false,
        [`COMPONENT_AKS74U_GRIP_04`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_01`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_02`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_03`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_04`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_05`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_06`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_07`] = false,
        [`COMPONENT_AKS74U_HANDGUARD_08`] = false,
        [`COMPONENT_AKS74U_MUZ_01`] = false,
        [`COMPONENT_AKS74U_MUZ_02`] = false,
        [`COMPONENT_AKS74U_MUZ_03`] = false,
        [`COMPONENT_AKS74U_MUZ_04`] = false,
        [`COMPONENT_AKS74U_MUZ_05`] = false,
        [`COMPONENT_AKS74U_MUZ_06`] = false,
        [`COMPONENT_AKS74U_MUZ_07`] = false,
        [`COMPONENT_AKS74U_MUZ_08`] = false,
        [`COMPONENT_AKS74U_MUZ_09`] = false,
        [`COMPONENT_AKS74U_SCOPE_01`] = false,
        [`COMPONENT_AKS74U_SCOPE_02`] = false,
        [`COMPONENT_AKS74U_SCOPE_03`] = false,
        [`COMPONENT_AKS74U_SCOPE_04`] = false,
        [`COMPONENT_AKS74U_SCOPE_05`] = false,
        [`COMPONENT_AKS74U_SCOPE_06`] = false,
        [`COMPONENT_AKS74U_SCOPE_07`] = false,
        [`COMPONENT_AKS74U_SCOPE_08`] = false,
        [`COMPONENT_AKS74U_SCOPE_09`] = false,
        [`COMPONENT_AKS74U_SCOPE_10`] = false,
        [`COMPONENT_AKS74U_SCOPE_11`] = false,
        [`COMPONENT_AKS74U_SCOPE_12`] = false,
        [`COMPONENT_AKS74U_SCOPE_13`] = false,
        [`COMPONENT_AKS74U_SCOPE_14`] = false,
        [`COMPONENT_AKS74U_SCOPE_15`] = false,
        [`COMPONENT_AKS74U_SCOPE_16`] = false,
        [`COMPONENT_AKS74U_SCOPE_17`] = false,
        [`COMPONENT_AKS74U_STOCK_01`] = false,
        [`COMPONENT_AKS74U_STOCK_02`] = false,
        [`COMPONENT_AKS74U_STOCK_03`] = false,
        [`COMPONENT_AKS74U_STOCK_04`] = false,
        [`COMPONENT_AKS74U_STOCK_05`] = false,
    },
    [`WEAPON_asval`] = {
        [`COMPONENT_ASVAL_CLIP_01`] = false,
        [`COMPONENT_ASVAL_CLIP_02`] = false,
        [`COMPONENT_ASVAL_CLIP_03`] = false,
        [`COMPONENT_ASVAL_CLIP_04`] = false,
        [`COMPONENT_ASVAL_FLSH_01`] = false,
        [`COMPONENT_ASVAL_FLSH_02`] = false,
        [`COMPONENT_ASVAL_FLSH_03`] = false,
        [`COMPONENT_ASVAL_FLSH_04`] = false,
        [`COMPONENT_ASVAL_GRIP_01`] = false,
        [`COMPONENT_ASVAL_GRIP_02`] = false,
        [`COMPONENT_ASVAL_GRIP_03`] = false,
        [`COMPONENT_ASVAL_GRIP_04`] = false,
        [`COMPONENT_ASVAL_GRIP_05`] = false,
        [`COMPONENT_ASVAL_GRIP_06`] = false,
        [`COMPONENT_ASVAL_GRIP_07`] = false,
        [`COMPONENT_ASVAL_GRIP_08`] = false,
        [`COMPONENT_ASVAL_GRIP_09`] = false,
        [`COMPONENT_ASVAL_GRIP_10`] = false,
        [`COMPONENT_ASVAL_SCOPE_01`] = false,
        [`COMPONENT_ASVAL_SCOPE_02`] = false,
        [`COMPONENT_ASVAL_SCOPE_03`] = false,
        [`COMPONENT_ASVAL_SCOPE_04`] = false,
        [`COMPONENT_ASVAL_SCOPE_05`] = false,
        [`COMPONENT_ASVAL_SCOPE_06`] = false,
        [`COMPONENT_ASVAL_SCOPE_07`] = false,
        [`COMPONENT_ASVAL_SCOPE_08`] = false,
        [`COMPONENT_ASVAL_SCOPE_09`] = false,
        [`COMPONENT_ASVAL_STOCK_01`] = false,
        [`COMPONENT_ASVAL_STOCK_02`] = false,
        [`COMPONENT_ASVAL_STOCK_03`] = false,
        [`COMPONENT_ASVAL_STOCK_04`] = false,
        [`COMPONENT_ASVAL_STOCK_05`] = false,
        [`COMPONENT_ASVAL_STOCK_06`] = false,
        [`COMPONENT_ASVAL_STOCK_07`] = false,
        [`COMPONENT_ASVAL_STOCK_08`] = false,
        [`COMPONENT_ASVAL_STOCK_09`] = false,
        [`COMPONENT_ASVAL_STOCK_10`] = false,
    },
    [`WEAPON_FN42`] = {
        [`w_ar_fn42_mag1`] = false,
        [`w_ar_fn42_mag2`] = false,
        [`w_at_ar_fn42_scope`] = false,
        [`w_at_ar_fn42_supp`] = false,
    },
    [`WEAPON_GRAU`] = {
        [`w_ar_grau_mag1`] = false,
        [`w_ar_grau_mag2`] = false,
        [`w_at_ar_grau_grip`] = false,
        [`w_at_ar_grau_scope`] = false,
        [`w_at_ar_grau_supp`] = false,
    },
    [`WEAPON_H2SMG`] = {
        [`w_sb_h2smg_mag1`] = false,
        [`w_sb_h2smg_mag2`] = false,
        [`w_at_sb_h2smg_supp`] = false,
        [`w_at_sb_h2smg_scope`] = false,
    },
    [`WEAPON_HKUMP`] = {
        [`COMPONENT_UMP_CLIP_01`] = false,
        [`COMPONENT_UMP_CLIP_02`] = false,
        [`COMPONENT_UMP_FLSH_01`] = false,
        [`COMPONENT_UMP_FLSH_02`] = false,
        [`COMPONENT_UMP_FLSH_03`] = false,
        [`COMPONENT_UMP_FLSH_04`] = false,
        [`COMPONENT_UMP_FLSH_05`] = false,
        [`COMPONENT_UMP_FLSH_06`] = false,
        [`COMPONENT_UMP_FLSH_07`] = false,
        [`COMPONENT_UMP_GRIP_01`] = false,
        [`COMPONENT_UMP_GRIP_02`] = false,
        [`COMPONENT_UMP_GRIP_03`] = false,
        [`COMPONENT_UMP_GRIP_04`] = false,
        [`COMPONENT_UMP_GRIP_05`] = false,
        [`COMPONENT_UMP_GRIP_06`] = false,
        [`COMPONENT_UMP_GRIP_07`] = false,
        [`COMPONENT_UMP_GRIP_08`] = false,
        [`COMPONENT_UMP_GRIP_09`] = false,
        [`COMPONENT_UMP_GRIP_10`] = false,
        [`COMPONENT_UMP_MOUNT_01`] = false,
        [`COMPONENT_UMP_MOUNT_02`] = false,
        [`COMPONENT_UMP_SCOPE_01`] = false,
        [`COMPONENT_UMP_SCOPE_02`] = false,
        [`COMPONENT_UMP_SCOPE_03`] = false,
        [`COMPONENT_UMP_SCOPE_04`] = false,
        [`COMPONENT_UMP_SCOPE_05`] = false,
        [`COMPONENT_UMP_SCOPE_06`] = false,
        [`COMPONENT_UMP_SCOPE_07`] = false,
        [`COMPONENT_UMP_SCOPE_08`] = false,
        [`COMPONENT_UMP_SCOPE_09`] = false,
        [`COMPONENT_UMP_SCOPE_10`] = false,
        [`COMPONENT_UMP_STOCK_01`] = false,
        [`COMPONENT_UMP_STOCK_02`] = false,
        [`COMPONENT_UMP_SUPP_01`] = false,
        [`COMPONENT_UMP_SUPP_02`] = false,
        [`COMPONENT_UMP_SUPP_03`] = false,
        [`COMPONENT_UMP_SUPP_04`] = false,
        [`COMPONENT_UMP_SUPP_05`] = false,
        [`COMPONENT_UMP_SUPP_06`] = false,
    },
    [`WEAPON_MK47BANSHEE2`] = {
        [`COMPONENT_MK47BANSHEE_CLIP_01`] = false,
        [`COMPONENT_MK47BANSHEE_CLIP_02`] = false,
        [`COMPONENT_MK47BANSHEE_CLIP_03`] = false,
        [`COMPONENT_MK47BANSHEE_CLIP_04`] = false,
        [`COMPONENT_MK47BANSHEE_CLIP_05`] = false,
        [`COMPONENT_MK47BANSHEE_CLIP_06`] = false,
        [`COMPONENT_MK47BANSHEE_FLSH_01`] = false,
        [`COMPONENT_MK47BANSHEE_GRIP_01`] = false,
        [`COMPONENT_MK47BANSHEE_GRIP_02`] = false,
        [`COMPONENT_MK47BANSHEE_GRIP_03`] = false,
        [`COMPONENT_MK47BANSHEE_GRIP_04`] = false,
        [`COMPONENT_MK47BANSHEE_STOCK_01`] = false,
        [`COMPONENT_MK47BANSHEE_SUPP_01`] = false,
        [`COMPONENT_MK47BANSHEE_SCOPE_01`] = false,
    },
    [`WEAPON_FM42`] = {
        [`COMPONENT_FM1_GLOCK19_CLIP_01`] = false,
        [`COMPONENT_FM1_GLOCK19_CLIP_02`] = false,
        [`COMPONENT_FM1_M9A3_CLIP_01`] = false,
        [`COMPONENT_FM1_M9A3_CLIP_02`] = false,
        [`COMPONENT_FM1_CZ75_CLIP_01`] = false,
        [`COMPONENT_FM1_P226_CLIP_01`] = false,
        [`COMPONENT_FM1_P226_CLIP_02`] = false,
        [`COMPONENT_FM1_P320_CLIP_01`] = false,
        [`COMPONENT_FM1_P320_CLIP_02`] = false,
        [`COMPONENT_FM1_P320_SLIDE_01`] = false,
        [`COMPONENT_FM1_P320_SLIDE_02`] = false,
        [`COMPONENT_FM1_P320_FRAME_01`] = false,
        [`COMPONENT_FM1_P320_FRAME_02`] = false,
    },
    [`WEAPON_FM1_GLOCK19`] = {
        [`COMPONENT_FM42_CLIP_01`] = false,
        [`COMPONENT_FM42_CLIP_02`] = false,
        [`COMPONENT_FM42_FLSH_01`] = false,
    },
}

local addonWeapons = {
    `WEAPON_aks74u`,
    `WEAPON_asval`,
    `WEAPON_FN42`,
    `WEAPON_GRAU`,
    `WEAPON_H2SMG`,
    `WEAPON_HKUMP`,
    `WEAPON_MK47BANSHEE2`,
    `WEAPON_FM42`,
    `WEAPON_FM1_GLOCK19`,
    `WEAPON_M133`,
    `WEAPON_MINIUZI`,
    `WEAPON_AKPU`,
    `WEAPON_benellim2`,
    `WEAPON_FAR`,
    `WEAPON_NEVA`,
    `WEAPON_VECTOR`,
    `WEAPON_STUNGRENADE`, 
}

AddEventHandler('onClientMapStart', function()
    exports.spawnmanager.spawnPlayer()
    Wait(1500)
    exports.spawnmanager.setAutoSpawn(false)
end)

local function SetDeadOrAlive(state)
    if state then
        LocalPlayer.state.dead = false
        dead = false
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        TriggerEvent('playerSpawned', coords.x, coords.y, coords.z, heading)
    else
        LocalPlayer.state.dead = true
        dead = true
    end
end


local function ReviveLocalPlayer()
    local loadout = {}
    local ped = PlayerPedId()
    for i = 1, #addonWeapons do
        local weapon = addonWeapons[i]
        if HasPedGotWeapon(ped, weapon, false) then
            table.insert(loadout, weapon)
        end
    end

    SetEntityHealth(PlayerPedId(), 200)
    NetworkResurrectLocalPlayer(GetEntityCoords(PlayerPedId()), 0.0, true, false)
    SetEntityInvincible(PlayerPedId(), false) 
    ClearPedBloodDamage(PlayerPedId())
    SetPlayerInvincible(PlayerPedId(), false)
    ClearTimecycleModifier() 
    SendNUIMessage({HideHud = true})
    SetDeadOrAlive(true)

    for i = 1, #loadout do
        local weapon = loadout[i]
        GiveWeaponToPed(ped, weapon, 9999, false, false)
    end
end

local function IniciateDeathSequence()
    SendNUIMessage({ShowHud = true})
    SetTimecycleModifier('NG_BLACKOUT')
    SetTimecycleModifierStrength(0.9)
    reviveAvailable = false
    respawnAvailable = false
    local cooldown1 = 100
    local cooldown2 = 45
    local pId = PlayerId()
    CreateThread(function()
        while dead do
            Wait(0)
            DisableControlAction(0, 249, true)
        end
    end)
    while dead do
        
        if cooldown1 > 0 then
            cooldown1 = cooldown1 - 1
        end

        if cooldown2 > 0 then
            cooldown2 = cooldown2 - 1
        end

        
        if cooldown1 > 0 then
            mcooldown1 = '<span class="orange">AVAILABLE IN ' .. cooldown1 .. '  SECONDS.</span>'
            revive = '<span class="gray">YOU MAY USE</span> <span class="orange">/REVIVE</span><span class="gray"> IF YOU WERE KNOCKED OUT.</span>'
        else
            mcooldown1 = '<span class="green">AVAILABLE NOW!.</span>'
            revive = '<span class="gray">YOU MAY USE</span> <span class="green">/REVIVE</span><span class="gray"> IF YOU WERE KNOCKED OUT.</span>'
            reviveAvailable = true
        end

        if cooldown2 > 0 then
            mcooldown2 = '<span class="orange">AVAILABLE IN ' .. cooldown2 .. '  SECONDS.</span>'
            revive2 = '<span class="gray">IF YOU ARE DEAD, YOU MUST USE</span> <span class="orange">/RESPAWN</span>'
        else
            mcooldown2 = '<span class="green">AVAILABLE NOW!.</span>'
            revive2 = '<span class="gray">IF YOU ARE DEAD, YOU MUST USE</span> <span class="green">/RESPAWN</span>'
            respawnAvailable = true
        end

        SendNUIMessage({
            text1 = '<span class="red">YOU ARE KNOCKED OUT OR DEAD AND CANNOT SPEAK',
            cooldown1 = mcooldown1,
            cooldown2 = mcooldown2,
            revive = revive,
            revive2 = revive2
        })
        Wait(1000)
    end
end

AddEventHandler('gameEventTriggered', function(name,args)
    if name == 'CEventNetworkEntityDamage' and args[1] == PlayerPedId() and not dead then
        if GetEntityHealth(PlayerPedId()) < 101 and IsPedFatallyInjured(PlayerPedId()) then
            SetDeadOrAlive(false)
            IniciateDeathSequence()
        end
    end
end)

RegisterCommand('revive', function()
    if not dead then return
        exports["Notify"]:Notify("You are not dead or unconcious.", 5000, "error", options)
    end
    if not reviveAvailable then return 
        exports["Notify"]:Notify("You have to wait until the respawn is available.", 5000, "error", options)

    end
    ReviveLocalPlayer()
end)

local function GetNearestHospital()
    local nearest 

    for i = 1, #Config.Hospitals do
        local distance = #(GetEntityCoords(PlayerPedId()) - vector3(Config.Hospitals[i].X, Config.Hospitals[i].Y, Config.Hospitals[i].Z))
        if not nearest or distance < nearest.distance then
            nearest = {
                distance = distance,
                index = i
            }
        end
    end

    return Config.Hospitals[nearest.index]
end

local function RespawnLocalPlayer()
    dead = false
    local hospital = GetNearestHospital()
    local loadout = {}
    local ped = PlayerPedId()
    for i = 1, #addonWeapons do
        local weapon = addonWeapons[i]
        if HasPedGotWeapon(ped, weapon, false) then
            table.insert(loadout, weapon)
        end
    end

    SetTimecycleModifierStrength(0.4)
    SwitchOutPlayer(PlayerPedId(), 0, 1)
    SendNUIMessage({
        cooldown1 = ' ',
        cooldown2 = ' ',
        text1 = '<span class="green">YOU ARE BEING TRANSPORTED TO THE NEAREST HOSPITAL.</span>',
        revive = ' ',
        revive2 = ' '
    })

    while GetPlayerSwitchState() ~= 5 do
        Wait(500)
    end

    local X = hospital.X + 0.0
    local Y = hospital.Y + 0.0
    local Z = hospital.Z + 0.0
    local Heading = hospital.Heading + 0.0

    NetworkResurrectLocalPlayer(X, Y, Z, Heading, true, false)
    SetEntityCoordsNoOffset(PlayerPedId(), X, Y, Z, false, false, false, true);
    FreezeEntityPosition(PlayerPedId(), true)

    SetPlayerInvincible(PlayerPedId(), false);
    ClearPedBloodDamage(PlayerPedId());
    SwitchInPlayer(PlayerPedId())
    local tries = 0
    while true do
        Wait(500)
        tries = tries + 1

        if tries > 30 then
            StopPlayerSwitch()
            break
        end
        if GetPlayerSwitchState() == 10 then break end
        if GetPlayerSwitchState() == 12 then break end
        
    end
    ClearTimecycleModifier()
    FreezeEntityPosition(PlayerPedId(), false)
    SetDeadOrAlive(true)
    SendNUIMessage({
        HideHud = true
    })
    for i = 1, #loadout do
        local weapon = loadout[i]
        GiveWeaponToPed(ped, weapon, 9999, false, false)
    end
end

local lastPed = PlayerPedId()
local lastLoadout = {}
CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if ped ~= lastPed then
            for i = 1, #lastLoadout do
                local weapon = lastLoadout[i]
                GiveWeaponToPed(ped, weapon, 9999, false, false)
                if weaponAttachments[weapon] then
                    for k, v in pairs(weaponAttachments[weapon]) do
                        local attachment = k
                        if v then
                            GiveWeaponComponentToPed(ped, weapon, attachment)
                        end
                    end
                end
            end
        end

        lastLoadout = {}
        lastPed = ped
        for i = 1, #addonWeapons do
            local weapon = addonWeapons[i]
            if HasPedGotWeapon(ped, weapon, false) then
                table.insert(lastLoadout, weapon)
                for k, v in pairs(weaponAttachments[weapon]) do
                    local attachment = v
                    if HasPedGotWeaponComponent(ped, weapon, k) then
                        weaponAttachments[weapon][k] = true
                    else
                        weaponAttachments[weapon][k] = false
                    end
                end
            end
        end
    end
end)

RegisterCommand('respawn', function()
    if not dead then return
        exports["Notify"]:Notify("You are not dead or unconcious.", 5000, "error", options)
    end
    if not respawnAvailable then return 
        exports["Notify"]:Notify("You have to wait until the respawn is available.", 5000, "error", options)
    end
    RespawnLocalPlayer()
end)

function Notification(title, description)
    name = 'NAV_UP_DOWN'
    library = 'HUD_FREEMODE_SOUNDSET'
    PlaySoundFrontend(-1, name, library, true)
    lib.notify({
        id = title .. ' ' .. math.random(1,1000),
        title = title,
        description = description,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#909296'
        },
        icon = 'staff-snake',
        iconColor = '#C53030'
    })
end

RegisterNetEvent('EE_Death:Notification', function(title, description)
    Notification(title, description)
end)

RegisterNetEvent('EE_Death:Revive', function()
    if dead then
        exports["Notify"]:Notify("A staff member has revived you.", 5000, "info", options)
        ReviveLocalPlayer()
    end
end)

RegisterNetEvent('EE_Death:Respawn', function()
    if dead then
        exports["Notify"]:Notify("A staff member has revived you.", 5000, "info", options)
        RespawnLocalPlayer()
    end
end)
