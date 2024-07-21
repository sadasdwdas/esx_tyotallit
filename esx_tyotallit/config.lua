Config = {}

Config.Jobs = {
    ['police'] = {
        {
            Label = "Poliisi talli",
            Positions = {
                vector4(1867.3602, 3687.9919, 34.2675, 87.6925),
            }, 
            SpawnPosition = vector4(1870.1655, 3683.2578, 33.6978, 209.5867), 
            DeleteVehiclePosition = vector4(1875.0, 3680.0, 33.7, 209.0), 
            Ped = `s_m_y_airworker`, 
            Scenario = "WORLD_HUMAN_CLIPBOARD", 
            Vehicles = {
                ['Skoda242'] = { model = 'poliisi242', livery = 0},
                ['Volkswagen440'] = { model = 'poliisi440', livery = 0},
                ['Maija024'] = { model = 'poliisi024', livery = 0},
                ['Maija100'] = { model = 'poliisi100', livery = 0},
                ['Maija108'] = { model = 'poliisi108', livery = 0},
                ['Karhu'] = { model = 'karhu2', livery = 0},
            }
        },
        {
            Label = "Avaa helikopteri talli",
            Positions = {
                vector4(463.5470, -987.4406, 42.6923, 89.9438),
            },
            SpawnPosition = vector4(441.8160, -986.7783, 43.6923, 90.0514),
            DeleteVehiclePosition = vector4(447.0, -980.0, 43.7, 90.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Helikopteri'] = { model = 'kh1', livery = 0},
            }
        },
        {
            Label = "Avaa vene talli",
            Positions = {
                vector4(-783.7814, -1506.9399, 1.5952, 292.1099),
            },
            SpawnPosition = vector4(-789.2935, -1505.5763, 2.2589, 109.3811),
            DeleteVehiclePosition = vector4(-795.0, -1503.0, 2.2, 109.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Vene'] = { model = 'pvene', livery = 0},
            }
        }
    },
    ['mechanic'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(-1148.2086, -1999.4336, 13.1803, 133.6047),
            },
            SpawnPosition = vector4(-1154.7372, -2004.8600, 13.1803, 344.1724),
            DeleteVehiclePosition = vector4(-1160.0, -2000.0, 13.2, 344.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Hinuri'] = { model = 'towtruck', livery = 0},
            }
        }
    },
    ['securitas'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(371.2651, -1612.7498, 29.2920, 318.7477),
            }, 
            SpawnPosition = vector4(375.6678, -1611.3401, 29.2920, 235.6871),
            DeleteVehiclePosition = vector4(380.0, -1610.0, 29.3, 235.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Passat'] = { model = 'secupassat', livery = 0},
                ['Skoda'] = { model = 'secuskoda', livery = 0},
                ['Transportter'] = { model = 'secut6', livery = 0},
            }
        }
    },
    ['taxi'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(908.6454, -163.5546, 74.1420, 233.0721),
            },
            SpawnPosition = vector4(918.0980, -167.2344, 74.6096, 99.1436),
            DeleteVehiclePosition = vector4(925.0, -170.0, 74.6, 99.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Mersu'] = { model = 'taxi', livery = 0},
                ['Mersupaku'] = { model = 'taksihelsinki', livery = 0},
                ['Limusiini'] = { model = 'stretch', livery = 0},
            }
        }
    },
    ['redroses'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(2525.2039, 4106.2866, 38.5846, 33.0092),
            },
            SpawnPosition = vector4(2527.8811, 4115.0264, 38.5846, 343.1146),
            DeleteVehiclePosition = vector4(2530.0, 4118.0, 38.6, 343.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['zentorno'] = { model = 'zentorno', livery = 0},
            }
        }
    },
    ['cartel'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(-811.2538, 187.2908, 72.4785, 111.22),
            },
            SpawnPosition = vector4(351.7044, -587.5771, 74.1617, 341.5423),
            DeleteVehiclePosition = vector4(360.0, -590.0, 74.2, 341.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Koppimonkkari'] = { model = 'outlaw', livery = 0},
                ['Zentorno'] = { model = 'zentorno', livery = 0},
                ['emerus'] = { model = 'emerus', livery = 0},
            }
        }
    },
    ['ambulance'] = {
        {
            Label = "Avaa helikopteri talli",
            Positions = {
                vector4(342.3206, -584.9836, 74.1617, 71.4281),
            },
            SpawnPosition = vector4(351.7044, -587.5771, 74.1617, 341.5423),
            DeleteVehiclePosition = vector4(360.0, -590.0, 74.2, 341.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Helikopteri'] = { model = 'supervolito', livery = 0},
            }
        }
    },
    ['pappakerho'] = {
        {
            Label = "Avaa talli",
            Positions = {
                vector4(150.5583, 322.6021, 112.3335, 111.6051),
            },
            SpawnPosition = vector4(137.8022, 316.2218, 112.1387, 115.3895),
            DeleteVehiclePosition = vector4(140.0, 319.0, 112.1, 115.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Slamvan'] = { model = 'slamvan2', livery = 0},
                ['Paku'] = { model = 'gburrito', livery = 0},
                ['Moottoripyora'] = { model = 'lpbagger', livery = 1},
            }
        }
    }
}