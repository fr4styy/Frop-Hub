local Games = require(script.GameList)
print("start")
for i,v in pairs(Games) do
    print(i .. v)
    if game.PlaceId == v then
        print("test")
        local Game = require(script.Games[i])
        Game:Init()
    end
end
print("finish")
