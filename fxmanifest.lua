
fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'DF SCRIPTS'
version '1.0'
description 'DF SCRIPTS'

lua54 'yes'
version '1.0.0'

server_scripts{
    'config.lua',
    'server/server.lua',
} 

escrow_ignore 'config.lua'