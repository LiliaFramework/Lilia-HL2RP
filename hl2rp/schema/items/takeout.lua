﻿ITEM.name = "Takeout"
ITEM.desc = "Fast food packaged in a small box."
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl"
ITEM.healthRestore = 25
ITEM.restore = 75
ITEM.category = "consumables"
ITEM.price = 80
ITEM.functions.Use = {
    sound = "items/battery_pickup.wav",
    onRun = function(item)
        item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
        item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
    end
}

ITEM.permit = "food"
