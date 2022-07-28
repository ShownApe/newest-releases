--THANKS Elden#1111 FOR SHOWING ME THIS
--LEAK BC TOO MANY SKIDS HAVE IT NOW!!!!!!!!!

--update:
--no longer needs 2 tools

local plr = game.Players.LocalPlayer
local backpack = plr.Backpack
local character = plr.Character
local hrp = character.HumanoidRootPart
local targetinstance = character.Humanoid

local tool = character:FindFirstChildOfClass("Tool") or backpack:FindFirstChildOfClass("Tool")
local rarm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")

local function genrgrip(tool)
	local rgrip = Instance.new("Weld")
	rgrip.Name = "RightGrip"
	rgrip.Part0 = rarm
	rgrip.Part1 = tool.Handle
	rgrip.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90),0,0)
	rgrip.C1 = tool.Grip
	rgrip.Parent = rarm
	return rgrip
end

genrgrip(tool)
tool.Parent = backpack
tool.Parent = targetinstance
tool.Parent = character
tool.Handle:BreakJoints()
tool.Parent = backpack
tool.Parent = targetinstance
genrgrip(tool)
