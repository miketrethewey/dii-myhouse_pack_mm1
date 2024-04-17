local variant = Tracker.ActiveVariantUID

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Items
print("Loading Items")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/keys.json")
Tracker:AddItems("items/artifacts.json")
-- Markers
Tracker:AddItems("items/markers/house.json")
Tracker:AddItems("items/markers/second.json")
Tracker:AddItems("items/markers/mirrorhouse.json")
Tracker:AddItems("items/markers/daycare.json")
Tracker:AddItems("items/markers/mirrorgasstation.json")
Tracker:AddItems("items/markers/emptyhouse.json")
Tracker:AddItems("items/markers/hospital.json")
Tracker:AddItems("items/markers/endings.json")
print("")

-- Maps
print("Loading Maps")
Tracker:AddMaps("variants/" .. variant .. "/maps/maps.json")
print("")

-- Grids
print("Loading Grids")
Tracker:AddLayouts("layouts/grids/weapons.json")
Tracker:AddLayouts("layouts/grids/keys.json")
Tracker:AddLayouts("layouts/grids/artifacts.json")
Tracker:AddLayouts("layouts/grids/markers.json")
print("")

-- Variant
print("Loading Variant")
Tracker:AddLayouts("variants/" .. variant .. "/layouts/tabs/myhouse.json")
Tracker:AddLayouts("variants/" .. variant .. "/layouts/tabs/underhalls.json")
Tracker:AddLayouts("variants/" .. variant .. "/layouts/tabs.json")
Tracker:AddLayouts("variants/" .. variant .. "/layouts/tracker.json")
print("")

-- Base Layouts
print("Loading Base Layouts")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
print("")

-- Locations
print("Loading Locations")
if variant == "maps" then
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/thehouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/underhalls.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/secondhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/burnedhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/mirrorhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/sllahrednu.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/daycare.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/floodedhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/bathhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/brutalisthouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/airport.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/gasstation.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/mirrorgasstation.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/emptyhouse.json")
    Tracker:AddLocations("variants/" .. variant .. "/locations/underworld/hospital.json")
end
