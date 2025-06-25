fx_version 'adamant'
game 'gta5'

name 'JobVehicleRestrictions'
description 'Restricts vehicles to specified jobs'
author 'Vraith'
version '1.0.5'


shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

dependency 'qb-core'

escrow_ignore {
    'config.lua',
    'client.lua'
}
