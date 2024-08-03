Config = {}

Config.Jobs = {
    ['police'] = {
            Label = "Poliisi talli",
            Positions = {
                vector4(1867.3602, 3687.9919, 34.2675, 87.6925),
            },
            SpawnPosition = vector4(1870.1655, 3683.2578, 33.6978, 209.5867),
            DeleteVehiclePosition = vector4(1875.0, 3680.0, 33.7, 209.0),
            Ped = `s_m_y_airworker`,
            Scenario = "WORLD_HUMAN_CLIPBOARD",
            Vehicles = {
                ['Skoda242'] = { model = 'poliisi242'},
                ['Volkswagen440'] = { model = 'poliisi440'},
                ['Maija024'] = { model = 'poliisi024'},
                ['Maija100'] = { model = 'poliisi100'},
                ['Maija108'] = { model = 'poliisi108'},
                ['Karhu'] = { model = 'karhu2'},
        }
    },
    ['mechanic'] = {
        Label = "Avaa mekaanikon talli",
        Positions = {
            vector4(-1148.2086, -1999.4336, 13.1803, 133.6047),
        },
        SpawnPosition = vector4(-1154.7372, -2004.8600, 13.1803, 344.1724),
        DeleteVehiclePosition = vector4(-1150.0, -2000.0, 13.2, 344.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Hinuri'] = { model = 'towtruck'},
        }
    },
    ['blackhand'] = {
        Label = "Avaa bennys talli",
        Positions = {
            vector4(-40.0985, -1056.4739, 28.3965, 343.2370),
        },
        SpawnPosition = vector4(-32.2307, -1065.7354, 28.3965, 346.2010),
        DeleteVehiclePosition = vector4(-32.2307, -1065.7354, 28.3965, 346.2010),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Hinuri'] = { model = 'towtruck'},
        }
    },
    ['securitas'] = {
        Label = "Securitaksen talli",
        Positions = {
            vector4(371.2651, -1612.7498, 29.2920, 318.7477),
        },
        SpawnPosition = vector4(375.6678, -1611.3401, 29.2920, 235.6871),
        DeleteVehiclePosition = vector4(370.0, -1613.0, 29.3, 235.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Passat'] = { model = 'secupassat'},
            ['Skoda'] = { model = 'secuskoda'},
            ['Transporter'] = { model = 'secut6'},
        }
    },
    ['taxi'] = {
        Label = "Taxin talli",
        Positions = {
            vector4(908.6454, -163.5546, 74.1420, 233.0721),
        },
        SpawnPosition = vector4(918.0980, -167.2344, 74.6096, 99.1436),
        DeleteVehiclePosition = vector4(915.0, -160.0, 74.6, 99.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Mersu'] = { model = 'taxi'},
            ['Mersupaku'] = { model = 'taksihelsinki'},
            ['Limusiini'] = { model = 'stretch'},
        }
    },
    ['redroses'] = {
        Label = "Talli",
        Positions = {
            vector4(2525.2039, 4106.2866, 38.5846, 33.0092),
        },
        SpawnPosition = vector4(2527.8811, 4115.0264, 38.5846, 343.1146),
        DeleteVehiclePosition = vector4(2526.0, 4110.0, 38.6, 343.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['zentorno'] = { model = 'zentorno'},
        }
    },
    ['cartel'] = {
        Label = "Talli",
        Positions = {
            vector4(-809.3115, 190.7664, 72.4787, 162.2683),
        },
        SpawnPosition = vector4(-811.6967, 187.0546, 72.4767, 102.3995),
        DeleteVehiclePosition = vector4(-811.6967, 187.0546, 72.4767, 102.399),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Koppimonkkari'] = { model = 'outlaw'},
            ['Dubsta'] = { model = 'dubsta2'},
        }
    },
    ['ambulance'] = {
        Label = "ensihoidon helikopteri talli",
        Positions = {
            vector4(342.3206, -584.9836, 74.1617, 71.4281),
        },
        SpawnPosition = vector4(351.7044, -587.5771, 74.1617, 341.5423),
        DeleteVehiclePosition = vector4(350.0, -585.0, 74.2, 341.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Helikopteri'] = { model = 'supervolito'},
        }
    },
    ['pappakerho'] = {
        Label = "talli",
        Positions = {
            vector4(150.5583, 322.6021, 112.3335, 111.6051),
        },
        SpawnPosition = vector4(137.8022, 316.2218, 112.1387, 115.3895),
        DeleteVehiclePosition = vector4(140.0, 320.0, 112.1, 115.0),
        Ped = `s_m_y_airworker`,
        Scenario = "WORLD_HUMAN_CLIPBOARD",
        Vehicles = {
            ['Slamvan'] = { model = 'slamvan2'},
            ['Paku'] = { model = 'gburrito'},
            ['Moottoripyora'] = { model = 'lpbagger'},
        }
    },
}
