local blibExample = {}
local runService = game:GetService("RunService")

if _G.BLIBS then
	_G.BLIBS.insert("blibExample", script)
end

if runService:IsServer() and script:GetAttribute("RunContext") == "Server" then
	-- Server
elseif runService:IsClient() and script:GetAttribute("RunContext") ~= "Client" then
	warn(`[LOG]: You cannot use {script.Name} from the client side.`)
end

if runService:IsClient() and script:GetAttribute("RunContext") == "Client" then
	-- Client
elseif runService:IsServer() and script:GetAttribute("RunContext") ~= "Server" then
	warn(`[LOG]: You cannot use {script.Name} from the server side.`)
end

return blibExample
