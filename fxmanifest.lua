fx_version 'adamant'
games { 'gta5' }

version '1.0'
lua54 'yes'


author 'erkanpl'
description 'Deathscreen for Vmenu based Servers'
version '1.0'
scriptname 'ee-deathscreen'


ui_page 'html/hud.html'

files {
	'html/*.html',
	'html/js/*.js',
	'html/css/*.css',
	'html/fonts/*',
}

shared_script '@ox_lib/init.lua'


client_scripts {
    'config.lua',
    'client/**.lua',
}

server_scripts {
    'config.lua',
}

