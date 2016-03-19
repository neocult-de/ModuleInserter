local mi_planner = copyPrototype("deconstruction-item", "deconstruction-planner", "module-inserter")
mi_planner.order = "c[automated-construction]-d[module-inserter]"
mi_planner.icon = "__ModuleInserter__/graphics/module-inserter-icon.png"


local mi_proxy = copyPrototype("container","wooden-chest","module-inserter-proxy")
mi_proxy.icon = "__ModuleInserter__/graphics/module-inserter-icon.png"
table.insert(mi_proxy.flags, "placeable-off-grid")
mi_proxy.collision_box = {{-0.1,-0.1},{0.1,0.1}}
mi_proxy.collision_mask = {"doodad-layer", "not-colliding-with-itself"}

local mi_proxy_i = copyPrototype("item","wooden-chest","module-inserter-proxy")
table.insert(mi_proxy_i.flags, "hidden")
mi_proxy_i.icon = "__ModuleInserter__/graphics/module-inserter-icon.png"
mi_proxy_i.stack_size = 1000

data:extend({mi_planner,mi_proxy, mi_proxy_i,})
