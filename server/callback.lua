ESX = exports["es_extended"]:getSharedObject()

if #wx.Buttons > 2 then -- Show warning when the button count is invalid
    print('[WARNING] - Your RPC Button config contains more than 2 buttons, please remove the third one to avoid issues')
end

lib.callback.register('wx_rpc:getSlots', function()
    return GetConvarInt('sv_maxclients', 48)
end)

lib.callback.register('wx_rpc:getPlayers', function()
    local xPlayers = ESX.GetPlayers()
    return #xPlayers
end)