fx_version 'adamant'

game 'gta5'
author "Dessaux"
version '1.0.0'

server_script {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'@es_extended/locale.lua',
    'locales/es.lua',
	'locales/en.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'@es_extended/locale.lua',
    'locales/es.lua',
	'locales/en.lua',
	'client/main.lua'
}