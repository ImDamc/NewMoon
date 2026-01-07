if not game:IsLoaded() then
    game.Loaded:Wait();
end

local loader = game:HttpGet("");
local env = getgenv and getgenv() or {};
if env.MoonV3Loaded then
    return;
end

if queue_on_teleport then
    queue_on_teleport(loader);
end

env.MoonV3Loaded = true;
