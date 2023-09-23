wx = {}
wx.updateTime = 25 -- Update time in seconds (How often to update the status) (Lower time = Faster & more accurate updates = higher client resmon)
wx.discordOptions = {
    AppID = '0', -- Your application ID
    Asset = "large", -- Your asset (image) name
    AssetText = "Join Us", -- Text to show when hovering over the image
}

wx.Buttons = {
    -- You can only set maximum of 2 buttons - so you can set only one button or no buttons

    -- Button Text           Button URL
    ["Discord"] = "https://discord.gg/yourinvite",
    ["Join"] = "fivem://connect/yourserverip",
}