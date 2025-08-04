fx_version 'cerulean'
game 'gta5'

author 'CodeRaiders'
description 'RaidCore - Base framework open source for FiveM using Ox resources'
version '0.1.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config/config.lua',
    'shared/functions.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'core/moduleloader.lua',
    'core/commands.lua'
}

files {
    'locales/*.json'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    'ox_target',
    'oxmysql'
}