local config
repeat
    config = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua", true))()
    wait(math.random()* 0.05 + 0.35)  -- check again every 5 seconds if item_ID < 1
until config and config.item_ID and config.item_ID >= 1

for i = 1, 6 do
local args = {
    [1] = config.item_ID
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("MarketService"):WaitForChild("RF"):WaitForChild("Buy"):InvokeServer(unpack(args))
    wait(math.random() * 0.4 + 2.01)
end
