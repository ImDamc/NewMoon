if not game:IsLoaded() then
    game.Loaded:Wait();
end

local loader = game:HttpGet("https://raw.githubusercontent.com/ImDamc/NewMoon/refs/heads/main/Loader.luau");
local env = getgenv and getgenv() or {};
if env.MoonV3Loaded then
    return;
end

local players = game:GetService("Players");

if queue_on_teleport then
    repeat
        task.wait();
    until select(2, function()
        return players.LocalPlayer;
    end)
    players.LocalPlayer.OnTeleport:Connect(function()
        queue_on_teleport(loader);
    end)
end

env.MoonV3Loaded = true;
loadstring(game:HttpGet("https://raw.githubusercontent.com/ImDamc/NewMoon/refs/heads/main/Client/Source.luau"))();
