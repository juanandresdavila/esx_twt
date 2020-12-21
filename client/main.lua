RegisterNetEvent('esx_twt:sendProximityMessage')
AddEventHandler('esx_twt:sendProximityMessage', function(playerid, title, message, color)
    local player = PlayerId()
    local target = GetPlayerFromServerId(playerId)

    local PlayerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

    if target == player or #(playerCoords - targetCoords) < 20 then
        TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
    end
end)

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/twt', _U('twt_help'), {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        TriggerEvent('chat:removeSuggestion', '/twt')
end)