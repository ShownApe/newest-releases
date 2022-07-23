--THANKS Elden#1111 FOR SHOWING ME THIS
--LEAK BC TOO MANY SKIDS HAVE IT NOW!!!!!!!!!

local plr = game.Players.LocalPlayer
local backpack = plr.Backpack
local character = plr.Character
local hrp = character.HumanoidRootPart

local tool = character:FindFirstChildOfClass("Tool") or backpack:FindFirstChildOfClass("Tool")
if #game.Players.LocalPlayer.Backpack:GetChildren() < 2 and workspace:FindFirstChild("Handle") then	
	firetouchinterest(game:GetService("Workspace").Handle,hrp,0)
	firetouchinterest(game:GetService("Workspace").Handle,hrp,1)
	character.ChildAdded:wait()
	task.wait()
end
for i,v in pairs(character:GetChildren()) do
	if v:IsA("Tool") then
		v.Parent = backpack
		v.Parent = character
		v.Parent = backpack
	end
end

local attachtool
for i,v in pairs(backpack:GetChildren()) do
	if v:IsA("Tool") and v ~= tool then
		attachtool = v
		break
	end
end
tool.Parent = backpack

attachtool.Parent = character
attachtool.Parent = tool
attachtool.Parent = backpack
attachtool.Parent = character.Head

local rarm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")
local rgrip = Instance.new("Weld")
rgrip.Name = "RightGrip"
rgrip.Part0 = rarm
rgrip.Part1 = attachtool.Handle
rgrip.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90),0,0)
rgrip.C1 = attachtool.Grip
rgrip.Parent = rarm
