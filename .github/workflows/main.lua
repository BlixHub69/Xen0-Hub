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

Tab:CreateInput({
    name = "Target Folder Name",
    placeholder = "Type folder name and press Enter...",
    removeTextOnFocusLost = false,
    callback = function(text)
        -- Ignore empty inputs
        if not text or text == "" then
            return
        end

        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local head = character:FindFirstChild("Head") or character:WaitForChild("Head")

        -- Search Workspace for the folder entered
        local iceCreams = workspace:FindFirstChild(text)

        if not iceCreams then
            Rayfield:Notify({
                Title = "Folder Not Found",
                Content = "Could not find folder '" .. text .. "' in Workspace.",
                Duration = 4,
                Image = 4483363465,
            })
            return
        end

        -- Iterate through parts
        for _, v in ipairs(iceCreams:GetChildren()) do
            if v:IsA("BasePart") then
                firetouchinterest(head, v, 0)
                task.wait()
                firetouchinterest(head, v, 1)
            end
        end

        Rayfield:Notify({
            Title = "Success",
            Content = "Finished collecting items in " .. text,
            Duration = 3,
            Image = 4483363465,
        })
    end,
})
