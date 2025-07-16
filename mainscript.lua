local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua", true))()
if config.item_ID and config.item_ID >= 1 then
    for i = 1, 6 do
        -- do stuff
        wait(math.random() * 0.3 + 1.5)
    end
end
