# vera samsung tv serial


A very simple plugin to turn on a Samsung TV using serial (RS232) commands over the network via a using a Digi PortServer.
```
-----------     TCP     -------------------     Serial/RS232     --------------
|  Ezlo   |  ---------> | Digi PortServer | -------------------> | Samsung TV |
-----------             -------------------                      --------------
                        IP / Port
```

Use the following custom call to run the script via the API tool:
```json
{
    "method": "extensions.plugin.run",
    "id": "_ID_",
    "params": {
        "script": "HUB:samsung-tv-serial/scripts/turn_tv_on"
    }
}
```
