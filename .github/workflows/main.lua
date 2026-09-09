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
    name = "Folder Path",
    value = "Workspace.AllIceCreams",
    placeholder = "Enter folder path",
    callback = function(text)
        local current = game

        for part in text:gmatch("[^%.]+") do
            if part == "Workspace" then
                current = workspace
            else
                current = current:FindFirstChild(part)
            end

            if not current then
                warn("Invalid path: " .. text)
                return
            end
        end

        print("Selected folder:", current:GetFullName())
    end,
})

