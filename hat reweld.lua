--REWELD YOUR HATS IN R6 OR R15
local character = game.Players.LocalPlayer.Character

for i,v in pairs(character:GetChildren()) do
    if v:IsA("Accessory") then
        sethiddenproperty(v,"BackendAccoutrementState", 0) --prepare for hat to be rewelded
        for i,v in pairs(v.Handle:GetChildren()) do
            if v:IsA("Attachment") then v:remove() end --remove attachments so that they get welded to head
        end
    end
end

character["Body Colors"]:remove() --fire childremoving
--could also be done with equipping a tool to fire childadded
