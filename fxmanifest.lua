fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'RaidCore'
author 'Slashy5M'
version '1.0.0'
description 'Framework FiveM modulaire compatible OX'

dependencies {
    'ox_lib',
    'oxmysql',
    'ox_target',
    'ox_inventory',
}

client_scripts {
    'client/main.lua',
    'modules/**/*.lua'
}

server_scripts {
    'server/main.lua',
    'modules/**/*.lua'
}

shared_scripts {
    'shared/config.lua',
    '@ox_lib/init.lua'
}

provide 'raidcore'