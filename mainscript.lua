--[[local config
repeat
    config = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua", true))()
    wait(math.random()* 0.05 + 0.35)  -- check again every 5 seconds if item_ID < 1
until config and config.item_ID and config.item_ID >= 1

for i = 1, 6 do

game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MarketService.RF.Buy:InvokeServer(config.item_ID)
    wait(math.random() * 0.4 + 1.5)
end
]]--
print("[DEBUG] Script started")

local config
repeat
    print("[DEBUG] Attempting to load control.lua...")
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua", true))()
    end)

    if success then
        config = result
        print("[DEBUG] control.lua loaded. item_ID:", config.item_ID)
    else
        print("[ERROR] Failed to load control.lua:", result)
    end

    wait(math.random() * 0.05 + 0.35)
until config and config.item_ID and config.item_ID >= 1

print("[DEBUG] Valid item_ID found. Starting loop...")

for i = 1, 6 do
    print(string.format("[DEBUG] Loop iteration %d - invoking Buy with item_ID: %s", i, tostring(config.item_ID)))

    local success, result = pcall(function()
        return game:GetService("ReplicatedStorage")
            :WaitForChild("Packages")
            :WaitForChild("_Index")
            :WaitForChild("sleitnick_knit@1.4.7")
            :WaitForChild("knit")
            :WaitForChild("Services")
            :WaitForChild("MarketService")
            :WaitForChild("RF")
            :WaitForChild("Buy")
            :InvokeServer(config.item_ID)
    end)

    if success then
        print("[DEBUG] InvokeServer successful:", result)
    else
        print("[ERROR] InvokeServer failed:", result)
    end

    wait(math.random() * 0.4 + 1.5)
end

print("[DEBUG] Script finished")
