--DROP ALL ACCESSORIES IN R6 AND R15 BY ShownApe#7272
local block = false

local character = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character = nil
game.Players.LocalPlayer.Character = character
wait(game.Players.RespawnTime + 0.05)
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)

for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == "Torso" or v.Name == "UpperTorso" then
        v:Destroy()
    end
end
character.HumanoidRootPart:Destroy()

for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        sethiddenproperty(v,"BackendAccoutrementState", 0) --any integer 0-3 works but 4, as 4 is the default state for in character, 0 is for when it has collision in character or other circumstances, 2 is workspace, 1 is unknown if you know or figure out please let me know
        --BackendAccoutrementState is a replicated property similar to NetworkIsSleeping and is further documented in reweld
    end
end

if block == true then 
    for i,v in pairs(character:GetDescendants()) do
        if v:IsA("SpecialMesh") then
            v:Destroy()
        end
    end
end

for i,v in pairs(character:GetChildren()) do
    if v:IsA("BasePart") and v.Name ~= "Head" then
        v:Destroy() --trigger childremoving (can also remove body colors or animate localscript)
        --we can also trigger childadded with a tool or something else to weld the hats to our head
    end
end
character.Head:remove() --optional, can be removed
