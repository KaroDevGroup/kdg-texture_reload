-- Made by: Karo
-- v1.0

RegisterCommand('reloadtexture', function()
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName('~y~Reloading textures...')
    EndTextCommandThefeedPostTicker(false, false)

    SetFocusEntity(PlayerPedId())

    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    SetFocusPosAndVel(coords.x, coords.y, coords.z + 1000.0, 0.0, 0.0, 0.0)

    Wait(1000)

    SetFocusEntity(ped)

    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName('~g~Textures reload complete!')
    EndTextCommandThefeedPostTicker(false, false)
end, false)