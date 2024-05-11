Config = {}

Config.Command = 'online' 
Config.ShowExactJobCount = false -- whether or not to show the exact number of players for each job

Config.JobLocales = {
    police = {
        currently = "Atualmente ", --Currently
        online = "está por ai!", --are protecting the city!
        notOnline = "não está por ai!" --the city is unprotected!
    },
    medic = {
        currently = "Atualmente ", --Currently
        online = "estão por ai!", --ready to help!
        notOnline = "não estão por ai!" --no medics are available!
    }
}

Config.Jobs = {
    {
        job = "police", 
        label = "a Delegacia", 
		icon = "star", --https://github.com/femga/rdr3_discoveries/tree/22fa3103a803fb1a70feb61137ae08db3b09c192/useful_info_from_rpfs/textures
		texture = "generic_textures",
		count = 0 -- não tocar/don't touch
    },
    {
        job = "medic",
        label = "os Curandeiros",
		icon = "emote_greet", 
		texture = "multiwheel_emotes",
		count = 0 -- não tocar/don't touch
    }
}