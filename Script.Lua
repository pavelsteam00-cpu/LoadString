-- LoadString

local url = "https://raw.githubusercontent.com/pavelsteam00-cpu/Loader1/refs/heads/main/Script.lua"

local success, err = pcall(function()
    local source = game:HttpGet(url)
    if not source or source == "" then error("Empty response") end
    if source:find("404: Not Found", 1, true) then error("404 Not Found") end
    
    local func, compileErr = loadstring(source)
    if not func then error("Compile error: " .. tostring(compileErr)) end
    
    func()
end)

if success then
    print("[SkidLoader] Successfully executed")
else
    print("[SkidLoader] Execution failed: " .. tostring(err))
end

