Citizen.CreateThread(function()
  while true do
  Citizen.Wait(wx.updateTime*1000)
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())
    local ply = lib.callback.await('wx_rpc:getPlayers')
    local slots = lib.callback.await('wx_rpc:getSlots')

    SetDiscordAppId(wx.discordOptions.AppID)
    SetDiscordRichPresenceAsset(wx.discordOptions.Asset)
    SetDiscordRichPresenceAssetText(wx.discordOptions.AssetText)
    SetRichPresence(("[%s] %s | Players Online: %s/%s"):format(id,name,ply,slots))

    -- This button part could be done better ig, but it works
    for i=0,#wx.Buttons do
      for text,url in pairs(wx.Buttons) do
        SetDiscordRichPresenceAction(i, text, url)
      end
    end
end
end)