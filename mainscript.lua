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

print("[DEBUG] Valid item_ID found. Starting purchases...")

-- First buy: loop until success (result == true)
local firstSuccess = false
repeat
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

    if success and result == true then
        print("[DEBUG] First buy successful")
        firstSuccess = true
    else
        print("[ERROR] First buy failed or returned false/nil, retrying...")
        wait(1)
    end
until firstSuccess

-- Now do remaining 5 buys (total 6), always print success
for i = 2, 6 do
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

    print(string.format("[DEBUG] Buy %d invoked (result ignored, always success printed)", i))
    wait(math.random() * 0.4 + 1.5)
end

print("[DEBUG] Script finished")
