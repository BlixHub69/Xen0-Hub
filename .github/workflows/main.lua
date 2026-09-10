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

tab:CreateInput({
    name = "Target Folder Name",
    value = "",
    placeholder = "Type folder name and press Enter...",
    callback = function(text)
        print("Committed:", text)

        if text == "" then
            return
        end

        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local head = character:FindFirstChild("Head")

        if not head then
            return
        end

        local folder = workspace:FindFirstChild(text)

        if not folder then
            Rayfield:Notify({
                Title = "Folder Not Found",
                Content = "Could not find folder '" .. text .. "' in Workspace.",
                Duration = 4,
                Image = 4483363465,
            })
            return
        end

        for _, object in ipairs(folder:GetChildren()) do
            if object:IsA("BasePart") then
                firetouchinterest(head, object, 0)
                task.wait()
                firetouchinterest(head, object, 1)
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
