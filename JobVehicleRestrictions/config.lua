Config = {}

-- Notification system to use: 'okokNotify', 'QBCore', or 'ox_lib'
Config.NotificationSystem = 'okokNotify'

-- Translations
Config.Translations = {
    error_title = 'Error',
    no_permission = 'You do not have permission to drive this vehicle!',
    }

-- Job-specific vehicles
Config.JobVehicles = {
    police = { 
        vehicles = {
            `police`,        -- Standard Police Cruiser
            `police2`,       -- Buffalo Police Car
            `police3`,       -- Interceptor
            `police4`,       -- Unmarked Cruiser
            `policeb`,       -- Police Motorcycle
            `policet`,       -- Police Transporter
            `sheriff`,       -- Sheriff SUV
            `sheriff2`,      -- Sheriff Cruiser
            `fbi`,           -- FIB SUV
            `fbi2`,          -- FIB Buffalo
            `polmav`,        -- Police Maverick Helicopter
        }
    },
    ambulance = { 
        vehicles = {
            `ambulance`,     -- Ambulance
            `firetruk`,      -- Fire Truck
            `lguard`,        -- Lifeguard SUV
            `romero`,        -- Coroner's Van
            `emsnspeedo`,    -- Medical Speedo (if available on your server)
        }
    },
    mechanic = { 
        vehicles = {
            `flatbed`,       -- Flatbed Tow Truck
            `towtruck`,      -- Small Tow Truck
            `towtruck2`,     -- Large Tow Truck
            `utillitruck`,   -- Utility Truck
            `utillitruck2`,  -- Utility Truck Box
            `utillitruck3`,  -- Utility Truck Cherry Picker
        }
    },
    taxi = { 
        vehicles = {
            `taxi`,          -- Standard Taxi
            `dynasty`,       -- Dynasty Taxi Style
            `stretch`,       -- Limo (for VIP taxi services)
        }
    },
}

-- Check interval in ms
Config.CheckInterval = 500

-- Teleport offset when player is removed from vehicle
Config.TeleportOffset = {x = -1.0, y = 0.0, z = 0.0}