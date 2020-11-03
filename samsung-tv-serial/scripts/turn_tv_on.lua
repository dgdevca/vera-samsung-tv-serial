local params = ...

print("samsung-tv-serial: Start of turn_on_tv")

local net = require "network"

-- establish network connection
local hndl = network.connect( { ip = "10.50.18.8", port = "2001", connection_type = "TCP" } )


if not hndl then
    print("samsung-tv-serial: fail to connect")
end

print("samsung-tv-serial: hndl" .. hndl)

-- build the serial command to send via the Digi PortServer
checksum = 0xFF - (0x08 + 0x22 + 0x00 + 0x00 + 0x00 + 0x02) + 1
command = string.char(0x08,0x22,0x00,0x00,0x00,0x02,checksum)

print("samsung-tv-serial: Sending data: " .. command)

-- Send the command.  Script errors out on the network.send
conn = network.send( hndl, command )

data = network.inspect_data( hndl )
print("samsung-tv-serial: Reponse: " .. data)

network.close( hndl )

