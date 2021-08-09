local Games = require(script.GameList)

for i,v in pairs(Games) do
    if game.PlaceId == v then
        print("test")
        require(script.Games[i])
    end
end

