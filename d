--stop tryna skid you faggot ass ng

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Games = {
    [16472538603] = "https://api.jnkie.com/api/v1/luascripts/public/e737650962b2f1ff1930b75512daf046f929fb611603c209533162189c897cc3/download", -- Tha Bronx 3 Main
    [106580416109883] = "https://api.jnkie.com/api/v1/luascripts/public/e737650962b2f1ff1930b75512daf046f929fb611603c209533162189c897cc3/download", -- Tha Bronx 3 RP
    [12923560629] = "https://api.jnkie.com/api/v1/luascripts/public/e737650962b2f1ff1930b75512daf046f929fb611603c209533162189c897cc3/download", -- Tha Bronx 3 Bug Test
    [18642421777] = "https://api.jnkie.com/api/v1/luascripts/public/e737650962b2f1ff1930b75512daf046f929fb611603c209533162189c897cc3/download", -- Tha Bronx 3 VC
    [130700367963690]  = "https://api.jnkie.com/api/v1/luascripts/public/d8e2e4aa5142ced049e3787ce042c7bb946a9a72477315ec3279c7aa7e352822/download", -- Philly Streets 2
    [101606818845121]  = "https://api.jnkie.com/api/v1/luascripts/public/5715e07b34f28ea318bbda92906b22ce8a800597ab486842d08bfb9ee65c395a/download", -- Philly Stat Changer
    [99362936871032]  = "https://api.jnkie.com/api/v1/luascripts/public/b3b6e6b9aaeb4635f8b56fa179c667c4b1d167537e43d114e32e354d75d3b8b7/download", -- The Bronx Duels : Main
    [139943061361383]  = "https://api.jnkie.com/api/v1/luascripts/public/b3b6e6b9aaeb4635f8b56fa179c667c4b1d167537e43d114e32e354d75d3b8b7/download", -- The Bronx Duels : 1V1
    [85788627530413]  = "https://api.jnkie.com/api/v1/luascripts/public/b3b6e6b9aaeb4635f8b56fa179c667c4b1d167537e43d114e32e354d75d3b8b7/download"  -- The Bronx Duels : FFA
}

getgenv().SCRIPT_KEY = script_key

local ScriptURL = Games[game.PlaceId]

if not ScriptURL then
    LocalPlayer:Kick("Midnight | This game is not supported!")
    return
end

if not getgenv().SCRIPT_KEY then
    LocalPlayer:Kick("Midnight | Key not found! Use script_key")
    return
end

loadstring(game:HttpGet(ScriptURL))()
