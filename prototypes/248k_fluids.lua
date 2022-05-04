--local functions
local function config(name)
    return settings.startup[name].value
end

local function sprite(name)
    return '__248k__/ressources/fluids/'..name
end

local function burner_power()
    if config("el_burner_power_output") == "2.4MW (normal)" then
        return "0.04MJ"
    end

    if config("el_burner_power_output") == "3MW (high)" then
        return "0.05MJ"
    end

    if config("el_burner_power_output") == "1.2MW (low)" then
        return "0.02MJ"
    end
    
    return "0.04MJ"
end

data:extend({
    {
        name = 'el_pressurized_water',
        type = 'fluid',
        icon = sprite('el_pressurized_water.png'),
        icon_size = 64,
        default_temperature = 100,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.0, g=0.3, b=0.4 }, 
		flow_color = { r=0.0, g=0.3, b=0.4 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'el_kerosene',
        type = 'fluid',
        icon = sprite('el_kerosene.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '10kJ',
        base_color = { r=0.76, g=0.45, b=0.3 }, 
		flow_color = { r=0.76, g=0.45, b=0.3 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-b',
    },
    {
        name = 'el_acidic_water',
        type = 'fluid',
        icon = sprite('el_acidic_water.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.55, g=0.82, b=0.51 }, 
		flow_color = { r=0.55, g=0.82, b=0.51 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-c',
    },
    {
        name = 'el_desulfurized_kerosene',
        type = 'fluid',
        icon = sprite('el_desulfurized_kerosene.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        fuel_value = burner_power(),
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-d',
    },
    {
        name = 'el_ki_memory_fluid',
        type = 'fluid',
        icon = sprite('el_ki_memory_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-e',
    },
    {
        name = 'el_ki_cpu_fluid',
        type = 'fluid',
        icon = sprite('el_ki_cpu_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-e',
    },
    {
        name = 'fi_ki_circuit_fluid',
        type = 'fluid',
        icon = sprite('fi_ki_circuit_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-e',
    },
    {
        name = 'fu_ki_circuit_fluid',
        type = 'fluid',
        icon = sprite('fu_ki_circuit_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-e',
    },
    {
        name = 'fi_crystal_fluid',
        type = 'fluid',
        icon = sprite('fi_crystal_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_acid_gas',
        type = 'fluid',
        icon = sprite('fi_acid_gas.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fu_lead_fluid_hot',
        type = 'fluid',
        icon = sprite('fu_lead_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fu_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'fu_lead_fluid_cold',
        type = 'fluid',
        icon = sprite('fu_lead_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.9, g=0.77, b=0.6 }, 
		flow_color = { r=0.9, g=0.77, b=0.6 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fu_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'el_dirty_water',
        type = 'fluid',
        icon = sprite('el_dirty_water.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.36, g=0.36, b=0.6 }, 
		flow_color = { r=0.26, g=0.26, b=0.75 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'el_arc_pure_iron',
        type = 'fluid',
        icon = sprite('el_arc_pure_iron.png'),
        icon_size = 64,
        default_temperature = 1600,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'el_arc_pure_copper',
        type = 'fluid',
        icon = sprite('el_arc_pure_copper.png'),
        icon_size = 64,
        default_temperature = 1100,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'el_arc_pure_aluminum',
        type = 'fluid',
        icon = sprite('el_arc_pure_aluminum.png'),
        icon_size = 64,
        default_temperature = 700,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'el_item_subgroup_e',
        order = 'a-a',
    },
    {
        name = 'fi_arc_glass',
        type = 'fluid',
        icon = sprite('fi_arc_glass.png'),
        icon_size = 64,
        default_temperature = 1500,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_arc_gold',
        type = 'fluid',
        icon = sprite('fi_arc_gold.png'),
        icon_size = 64,
        default_temperature = 1100,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_arc_titan',
        type = 'fluid',
        icon = sprite('fi_arc_titan.png'),
        icon_size = 64,
        default_temperature = 1700,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_arc_neodym',
        type = 'fluid',
        icon = sprite('fi_arc_neodym.png'),
        icon_size = 64,
        default_temperature = 1300,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fu_arc_pure_lead',
        type = 'fluid',
        icon = sprite('fu_arc_pure_lead.png'),
        icon_size = 64,
        default_temperature = 350,
        max_temperature = 2000,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fu_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_strong_acid',
        type = 'fluid',
        icon = sprite('fi_strong_acid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fi_dirty_water',
        type = 'fluid',
        icon = sprite('fi_dirty_water.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fi_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fu_metal_foam',
        type = 'fluid',
        icon = sprite('fu_metal_foam.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fu_item_subgroup_f',
        order = 'a-a',
    },
    {
        name = 'fu_neutron_fluid',
        type = 'fluid',
        icon = sprite('fu_neutron_fluid.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1500,
        heat_capacity = '100kJ',
        base_color = { r=0.92, g=0.29, b=0.22 }, 
		flow_color = { r=0.92, g=0.29, b=0.22 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0,
        subgroup = 'fu_item_subgroup_f',
        order = 'a-a',
    },
})