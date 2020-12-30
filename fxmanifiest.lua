fx_version 'adamant'

game 'gta5'

description 'ESX TWT Command'

version '0.1'

server_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'locales/fr.lua',
    'locales/br.lua',
    'locales/cs.lua',
    'config.lua',
    'server/main.lua',
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'locales/fr.lua',
    'locales/br.lua',
    'locales/cs.lua',
    'config.lua',
    'client/main.lua',
}

dependency 'es_extended'
