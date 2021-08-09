local Games = require(script.GameList)
print("start")
for i,v in pairs(Games) do
    print(i .. v)
    if game.PlaceId == v then
        print("test")
        require(script.Games[i])
    end
end
print("finish")
