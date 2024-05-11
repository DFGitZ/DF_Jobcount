local VorpCore = {}

local VorpCore = exports.vorp_core:GetCore()


RegisterCommand(Config.Command, function(source, args, rawCommand)
    local src = source
    for _, v in pairs(Config.Jobs) do
        v.count = 0
        local jobOnline = false 
        for _, playerId in pairs(GetPlayers()) do
            TriggerEvent("vorp:getCharacter", playerId, function(user)
                if user.job == v.job then
                    v.count = v.count + 1
                    jobOnline = true
                end
            end)
        end
        
        local color = jobOnline and "COLOR_GREEN" or "COLOR_RED"
        local icon = v.icon or "tick" 
        local texture = v.texture or "generic_textures" 
        local jobLocales = Config.JobLocales[v.job] or {} 
        if jobOnline then
            local message = (jobLocales.currently or (Config.Locales.currently .. ' ')) .. v.label .. ' ' .. (jobLocales.online or Config.Locales.online)
            if Config.ShowExactJobCount then
                message = message .. ' ' .. v.count
            end
            VorpCore.NotifyLeft(src, "Info", message, texture, icon, 4000, color) 
        else
            local message = (jobLocales.currently or (Config.Locales.currently .. ' ')) .. v.label .. ' ' .. (jobLocales.notOnline or Config.Locales.notOnline)
            VorpCore.NotifyLeft(src, "Info", message, texture, icon, 4000, color) 
        end
    end
end, false)