require('prototypes/electronic/el_solar')
require('prototypes/electronic/el_tank')
require('prototypes/electronic/el_water_generator')
require('prototypes/electronic/el_pressurizer')
require('prototypes/electronic/el_burner')
require('prototypes/electronic/el_aluminum')
require('prototypes/electronic/el_lithium')
require('prototypes/electronic/el_ki/el_ki_beacon')
require('prototypes/electronic/el_ki/el_ki_linker')
require('prototypes/electronic/el_ki/el_ki_memory')
require('prototypes/electronic/el_ki/el_ki_cpu')
require('prototypes/electronic/el_ki/el_ki_core')
require('prototypes/electronic/el_ki/fi_ki_circuit')
require('prototypes/electronic/el_ki/fu_ki_circuit')
require('prototypes/electronic/el_diesel_train')
require('prototypes/electronic/el_train_fuel')
require('prototypes/electronic/el_train_equipment')
require('prototypes/electronic/el_energy_crystal')

require('prototypes/electronic/el_arc_furnace')
require('prototypes/electronic/el_caster')
require('prototypes/electronic/el_purifier')
require('prototypes/electronic/el_grower')
require('prototypes/electronic/el_materials')

require('prototypes/fission/fi_crafter')
require('prototypes/fission/fi_miner')
require('prototypes/fission/fi_fuel')
require('prototypes/fission/fi_solid_reactor')
require('prototypes/fission/fi_compound_material')
require('prototypes/fission/fi_materials')
require('prototypes/fission/fi_equipment')
require('prototypes/fission/fi_crusher')
require('prototypes/fission/fi_crushed')
require('prototypes/fission/fi_energy_crystal')
require('prototypes/fission/fi_robo')
require('prototypes/fission/fi_modules')

require('prototypes/fission/fi_fiberer')
require('prototypes/fission/fi_compound_machine')
require('prototypes/fission/fi_castor')

require('prototypes/fusion/fu_fusor')
require('prototypes/fusion/fu_boiler')
require('prototypes/fusion/fu_burner')
require('prototypes/fusion/fu_reactor')
require('prototypes/fusion/fu_lead')
require('prototypes/fusion/fu_exchanger')
require('prototypes/fusion/fu_robo')
require('prototypes/fusion/fu_activator')
require('prototypes/fusion/fu_star_engine/fu_star_engine_core')
require('prototypes/fusion/fu_star_engine/fu_star_engine_cooler')
require('prototypes/fusion/fu_star_engine/fu_star_engine_cooler_up')
--require('prototypes/fusion/fu_star_engine/fu_star_engine_caster')
require('prototypes/fusion/fu_star_engine/fu_star_engine_heater')
require('prototypes/fusion/fu_star_engine/fu_star_engine_heater_left')
require('prototypes/fusion/fu_space_probe')

require('prototypes/fusion/fu_laser')
require('prototypes/fusion/fu_plasma')
require('prototypes/fusion/fu_materials')
require('prototypes/fusion/fu_magnet')

require('prototypes/gravitation/gr_crafter')
require('prototypes/gravitation/gr_materials')
require('prototypes/gravitation/gr_train')
require('prototypes/gravitation/gr_charger')
require('prototypes/gravitation/gr_black_hole')
require('prototypes/gravitation/gr_white_hole')
require('prototypes/gravitation/gr_lab')

require('prototypes/248k_fluids')
require('prototypes/248k_elements')

require('prototypes/248k_subgroups')

require('prototypes/248k_techs')
require('prototypes/el_recipes')
require('prototypes/fi_recipes')
require('prototypes/fu_recipes')
require('prototypes/gr_recipes')

--booktorio
if mods["Booktorio"] then
    require('bk_sprites')
end
--informatron
if mods["informatron"] then
    require('bk_sprites')
    require('scripts/informatron/inf_sprites')
end
--SE
if mods["space-exploration"] then
    require('scripts/SE/data')
end

require('scripts/gravitation/gr_make_white_hole_recipes')


data:extend({
    {
        type = "sprite",
        name = "sprite_248kmainbutton",
        filename = "__248k__/ressources/groups/gr_group_icon.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        scale = 1,
    }
})

if data.raw.technology["atomic-bomb"] then
    table.insert(data.raw.technology["atomic-bomb"].effects, {type ="unlock-recipe", recipe ="fi_atomic_bomb_recipe"})
end
