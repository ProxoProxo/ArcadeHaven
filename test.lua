print("[DEBUG] Checking control.lua once...")

local success, result = pcall(function()
    return loadstring(game:HttpGet("https://arcade-haven.vercel.app/control.lua", true))()
end)

if success and type(result) == "table" and result.item_ID then
    print("[DEBUG] Loaded item_ID:", result.item_ID)
else
    warn("[ERROR] Failed to load or parse item_ID:", result)
end
