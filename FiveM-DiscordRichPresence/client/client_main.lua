Citizen.CreateThread(function()
    while true do

        local playerName = GetPlayerName(PlayerId())
        local playerId = GetPlayerServerId(PlayerId())

        local ApplicationID = Config.Discord.ApplicationID
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        SetRichPresence('Username: ' .. playerName .. 'Server id:' .. playerId)
        
        --Big Picture
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('Big Text')

        --Small Picture
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('Small Text')

        SetDiscordRichPresenceAction(0, 'Buttom One', 'https://~~~~~.com')
        SetDiscordRichPresenceAction(1, 'Buttom One', 'https://~~~~~.com')
        Citizen.Wait(1000)
    end
end)