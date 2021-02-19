--[[--
 @package   MoonZaphire
 @filename  MoonZaphire.lua
 @version   1.0
 @author    Díaz Urbaneja Víctor Eduardo Diex <victor.vector008@gmail.com>
 @date      05.02.2021 00:09:36 -04
]]

package.path = package.path .. ';../lib/?.lua;../src/?.lua'
require 'init'

--- I create a namespace (master class)
MoonZaphire = lgi.package("MoonZaphire")

-- I require my modules
require('app')
require('start')
require('login.auth_user')
require('login.auth_host')
require('settings.settings')
require('chat_list.chat_list')
require('chat.chat')
require('window')

--- Start the application
local App = MoonZaphire.App()
App:register()

return App:run(arg)