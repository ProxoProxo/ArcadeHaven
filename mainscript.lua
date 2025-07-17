local config
repeat
    config = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua", true))()
    wait(math.random()* 0.05 + 0.35)  -- check again every 5 seconds if item_ID < 1
until config and config.item_ID and config.item_ID >= 1

for i = 1, 6 do

game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MarketService.RF.Buy:InvokeServer(config.item_ID)
    wait(math.random() * 0.4 + 1.5)
end
