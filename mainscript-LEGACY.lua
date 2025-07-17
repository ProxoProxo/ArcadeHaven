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
--[[print("[DEBUG] Script started")

local timestamp = tick()
local url = "https://raw.githubusercontent.com/ProxoProxo/ArcadeHaven/main/control.lua?ts=" .. tostring(timestamp)
local config = loadstring(game:HttpGet(url, true))()
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
]]--
--[[local config

repeat
    local url = "https://2f5fd492-b880-4c79-a92b-f984cef296d9-00-u3ld71vsn8wp.riker.replit.dev:3000/control.lua"

    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)

    if success and result and type(result) == "table" then
        config = result
        print("[DEBUG] Fetched item_ID:", config.item_ID)
    else
        warn("[ERROR] Failed to fetch or parse control.lua:", result)
    end

    wait(math.random() * 0.05 + 0.35)
until config and config.item_ID and config.item_ID >= 1

print("[INFO] item_ID valid, executing main loop")

for i = 1, 6 do
    local success, err = pcall(function()
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"]
            .knit.Services.MarketService.RF.Buy
            :InvokeServer(config.item_ID)
    end)

    if success then
        print(string.format("[INFO] Invocation %d success", i))
    else
        warn(string.format("[ERROR] Invocation %d failed:", i), err)
    end

    wait(math.random() * 0.4 + 1.5)
end
]]--

--[[
local config

repeat
    local url = "https://arcade-haven.vercel.app/control.lua"
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)

    if success and result and type(result) == "table" then
        config = result
        print("[DEBUG] Fetched item_ID:", config.item_ID)
    else
        warn("[ERROR] Failed to fetch or parse control.lua:", result)
    end

    wait(math.random() * 0.05 + 0.35)
until config and config.item_ID and config.item_ID >= 1

print("[INFO] item_ID valid, executing main loop")

for i = 1, 6 do
    local success, err = pcall(function()
        game:GetService("ReplicatedStorage")
            .Packages._Index["sleitnick_knit@1.4.7"]
            .knit.Services.MarketService.RF.Buy
            :InvokeServer(config.item_ID)
    end)

    if success then
        print(string.format("[INFO] Invocation %d success", i))
    else
        warn(string.format("[ERROR] Invocation %d failed:", i), err)
    end

    wait(math.random() * 0.4 + 1.5)
end
]]--


--[[local config

repeat
    local url = "https://arcade-haven.vercel.app/control.lua"
    config = loadstring(game:HttpGet(url, true))()

    if config and config.item_ID and config.item_ID >= 1 then
        print("[INFO] Fetched item_ID:", config.item_ID)
    else
        print("[WAIT] item_ID still below 1, retrying...")
    end

    wait(math.random() * 0.05 + 0.35)
until config and config.item_ID and config.item_ID >= 1

print("[INFO] item_ID valid, executing main loop")

for i = 1, 6 do
    game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"]
        .knit.Services.MarketService.RF.Buy
        :InvokeServer(config.item_ID)

    print(string.format("[INFO] Invocation %d succeeded", i))
    wait(math.random() * 0.4 + 1.5)
end
]]--

--[[
print("[DEBUG] Script started")

local timestamp = tick()
local url = "https://arcade-haven.vercel.app/control.lua?ts=" .. tostring(timestamp)
local config = loadstring(game:HttpGet(url, true))()

repeat
    print("[DEBUG] Attempting to load control.lua...")
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://arcade-haven.vercel.app/control.lua", true))()
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

    local result = game:GetService("ReplicatedStorage")
        :WaitForChild("Packages")
        :WaitForChild("_Index")
        :WaitForChild("sleitnick_knit@1.4.7")
        :WaitForChild("knit")
        :WaitForChild("Services")
        :WaitForChild("MarketService")
        :WaitForChild("RF")
        :WaitForChild("Buy")
        :InvokeServer(config.item_ID)

    print("[DEBUG] InvokeServer successful:", result)

    wait(math.random() * 0.4 + 1.5)
end

print("[DEBUG] Script finished")
]]--
print("[DEBUG] Script started")

local timestamp = tick()
local url = "https://arcade-haven.vercel.app/control.lua?ts=" .. tostring(timestamp)
local config = loadstring(game:HttpGet(url, true))()

repeat
    print("[DEBUG] Attempting to load control.lua...")
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://arcade-haven.vercel.app/control.lua", true))()
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

    local success = false
    local result = nil

    repeat
        success, result = pcall(function()
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
            wait(1) -- wait before retrying
        end
    until success

    wait(math.random() * 0.4 + 1.5)
end

print("[DEBUG] Script finished")
