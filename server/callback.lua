if #wx.Buttons > 2 then -- Show warning when the button count is invalid
    print('[WARNING] - Your RPC Button config contains more than 2 buttons, please remove them to avoid issues')
end

lib.callback.register('wx_rpc:getSlots', function()
    return GetConvarInt('sv_maxclients', 48)
end)

lib.callback.register('wx_rpc:getPlayers', function()
    return GetNumPlayerIndices()
end)
