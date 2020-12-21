ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('chatMessage', function(playerId, playerName, message)
    if playerId ~= 0 then
        if string.gsub(message, 1, string.len('/')) ~= '/' then
            CancelEvent()

            playerName = GetRealPlayerName(playerId)
            TriggerClientEvent('chat:addMessage', -1, {args = {_U('twt_prefix', playerName), message}, color = {0, 153, 204}})
        end
    else
        print('esx_twt: You can\'t use this command from console')
end, false)

function GetRealPlayerName(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)

    if xPlayer then
        if Config.EnableESXIdentity then
            if Config.ShowOnlyFirstName then
                return xPlayer.get('firstname')
            else
                return xPlayer.getName()
            end
        else
            return xPlayer.getName()
        end
    else
        return GetPlayerName(playerId)
    end
end