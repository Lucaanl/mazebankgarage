--[[
  _____   _                                 _   _   _
 |_   _| (_)  _ __    _   _   ___          | \ | | | |
   | |   | | | '_ \  | | | | / __|         |  \| | | |    
   | |   | | | | | | | |_| | \__ \         | |\  | | |___ 
   |_|   |_| |_| |_|  \__,_| |___/  _____  |_| \_| |_____|
                                   |_____|
]]--

Config = {

    Translation = 'EN', -- Language used (EN, NL, PT)

    Laptop = {
        MoneyType = true, --True= Bank | False= Cash
        MoneyAmount = 500, --Amount you need to pay for a vehicle to be returned
    },

    MoneyType = true, --True= Bank | False= Cash
    SellPercentage = 75, -- Percentage you get back when selling a garage

    PlayerIdentifiers = { -- New ESX_Vehicleshop uses license instead of steam
        Tag = "steam:", -- Identifier tag to use. (steam:, license:, ip:, etc.)
        Format = function(FoundIdentifier) -- Identifier format
            return FoundIdentifier -- Default
            -- return string.gsub(FoundIdentifier, "license:", "") -- License
        end
    },

    GarageTypes = { -- Garage types that can be used
        {
            TypeName = "2Car", -- Garage type name
            TypePrice = 50000,  -- Garage type price
            TypeDoor = vector3(179.19, -1000.64, -99.0), -- Garage type dood
            TypeLaptop = vector3(172.75, -1000.15, -99.0), -- Garage type laptop
            TypeBlip = { -- Garage type blip
                BlipInfo = "2 Vehicle Garage", -- Garage type blip information
                BlipSprite = 357, -- Garage type blip sprite. (-1 to disable blip)
                BlipSize = 0, -- Garage type blip size
            },
            TypeLocations = { -- Garage type vehicle locations and heading
                {Pos = vector3(175.21, -1003.91, -98.99), Heading = 167.96},
                {Pos = vector3(170.80, -1004.23, -98.99), Heading = 167.96}
            }
        },
        {
            TypeName = "4Car", 
            TypePrice = 75000, 
            TypeDoor = vector3(207.09, -1018.3, -99.0),  
            TypeLaptop = vector3(205.65, -1014.29, -99.0),
            TypeBlip = {
                BlipInfo = "4 Vehicle Garage",
                BlipSprite = 357,
                BlipSize = 1.25,
            },
            TypeLocations = {
                {Pos = vector3(194.50, -1016.14, -99.0), Heading = 180.13},
                {Pos = vector3(194.57, -1022.32, -99.0), Heading = 180.13},
                {Pos = vector3(202.21, -1020.14, -99.0), Heading = 90.13},
                {Pos = vector3(202.21, -1023.32, -99.0), Heading = 90.13}
            }
        },
        {
            TypeName = "6Car", 
            TypePrice = 100000, 
            TypeDoor = vector3(206.89, -999.21, -99.0),  
            TypeLaptop = vector3(205.97, -994.91, -99.0),
            TypeBlip = {
                BlipInfo = "6 Vehicle Garage",
                BlipSprite = 357,
                BlipSize = 1.25,
            },
            TypeLocations = {
                {Pos = vector3(203.82, -1004.63, -99.0), Heading = 88.05},
                {Pos = vector3(194.16, -1004.63, -99.0), Heading = 266.42},
                {Pos = vector3(193.83, -1000.63, -99.0), Heading = 266.42},
                {Pos = vector3(202.62, -1000.63, -99.0), Heading = 88.05},
                {Pos = vector3(193.83, -997.01, -99.0), Heading = 266.42},
                {Pos = vector3(202.62, -997.01, -99.0), Heading = 88.05},
            }
        },
        {
            TypeName = "10Car", 
            TypePrice = 2000000, 
            TypeDoor = vector3(-91.0372, -820.9887, 222.0004),
            TypeLaptop = vector3(-87.4733, -831.1953, 222.0005),
            TypeBlip = {
                BlipInfo = "~o~Maze Bank Garage",
                BlipSprite = 369,
                BlipSize = 0.8,
            },
            TypeLocations = {
        [1] = { Pos = vector3(-85.24082,      -818.235535,    220.23494), Heading = -144.433289 },
        [2] = { Pos = vector3(-76.9321747,    -819.9362,      220.234451), Heading = 176.218323 },
        [3] = { Pos = vector3(-71.09352,      -822.318542,    220.234543), Heading = 140.8338 },
        [4] = { Pos = vector3(-67.9834747,    -828.685547,    220.234467), Heading = 94.56514 },
        [5] = { Pos = vector3(-70.25896,      -836.0581,      220.234222), Heading = 45.08332 },
        [6] = { Pos = vector3(-84.3974152,    -819.8488,      225.672928), Heading = -148.987808 },
        [7] = { Pos = vector3(-76.77495,      -819.621033,    225.672867), Heading = 171.160126 },
        [8] = { Pos = vector3(-71.1063461,    -823.0381,      225.672928), Heading = 136.971 },
        [9] = { Pos = vector3(-67.4827652,    -828.406433,    225.672943), Heading = 92.51076 },
        [10] = { Pos = vector3(-70.124855,     -835.7496,      225.673065), Heading = 49.92409 },
        [11] = { Pos = vector3(-85.98553,      -820.654846,    231.018417), Heading = -142.9082 },
        [12] = { Pos = vector3(-77.21592,      -820.092957,    231.018982), Heading = 178.564911 },
        [13] = { Pos = vector3(-71.42833,      -822.0914,      231.018478), Heading = 133.955643 },
        [14] = { Pos = vector3(-68.0297,       -828.6458,      231.018784), Heading = 88.1085358 },
        [15] = { Pos = vector3(-70.2125,       -835.0709,      231.0186), Heading = 48.27413 },
            }
        }
    },

    Garages = { -- Garages
        --[[ WARNING: 
                1. When adding garages add them on the bottom. When added at the top player will get a different garage.
                2. The first garage will always be given to the player without being needed to be bought!
        ]]--

        -- 2 Car
        {GarageType = "2Car", DoorPos = vector3(0,0,0), SpawnPos = vector3(0,0,0), SpawnHeading = 0},

        -- 10 Car
        {GarageType = "10Car", DoorPos = vector3(-70.87, -799.26, 43.32), SpawnPos = vector3(-84.11, -821.25, 35.13), SpawnHeading = 351.15},
    },

}


-- Don't Touch!
Translations = {}