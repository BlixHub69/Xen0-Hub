local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "Xen0 Hub",
    subtitle = "made by blixxARSENAL",
    sidebarLayout = true,
})

local tab = window:CreateTab({ name = "Classics", icon = 5799739953 })

tab:CreateButton({
    name = "Infinity Yield",
    callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
    end,
})

tab:CreateButton({
    name = "Simple Spy",
    callback = function(value)
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
    end,
})

tab:CreateInput({
    Name = "Execute",
    CurrentValue = "",
    PlaceholderText = "Enter Script",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local func, err = loadstring(Text)

        if not func then
            warn("Script error: " .. tostring(err))
            return
        end

        local success, result = pcall(func)

        if not success then
            warn("Execution error: " .. tostring(result))
        end
    end,
})

tab:CreateInput({
    name = "Max players",
    numeric = true,
    value = "16",
    placeholder = "Enter a number",
    callback = function(text)
        local function getPath(path)
    local current = game

    for part in path:gmatch("[^%.]+") do
        if part == "Workspace" then
            current = workspace
        else
            current = current and current:FindFirstChild(part)
        end

        if not current then
            return nil
        end
    end

    return current
end

local Input = Tab:CreateInput({
    Name = "Folder Path",
    CurrentValue = "",
    PlaceholderText = "Workspace.AllIceCreams",
    RemoveTextAfterFocusLost = false,
    Flag = "FolderPath",

    Callback = function(Text)
        local folder = getPath(Text)

        if folder then
            print("Selected folder:", folder:GetFullName())
        else
            warn("Invalid path:", Text)
        end
    end,
})
    end,
})
