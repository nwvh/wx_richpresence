fx_version 'cerulean'
game 'gta5'
version '1.0.0'
author 'wx / woox'
description 'Simple discord RPC status with accurate game data using callbacks'
lua54 'yes'

client_script 'client/client.lua'
server_script 'server/callback.lua'
shared_scripts {'@ox_lib/init.lua','configs/*.lua'}