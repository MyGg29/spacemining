local spaceMiner=table.deepcopy(data.raw.item["satellite"])

spaceMiner.name="space-miner"
spaceMiner.icons={
   {
      icon=spaceMiner.icon,
      tint={r=1,g=0,b=0,a=0.3}
   },
}
spaceMiner.rocket_launch_product = {
   name="space-ore", 
   amount_min=30,
   amount_max=100,
}

local minerRecipe=table.deepcopy(data.raw.recipe["satellite"])
minerRecipe.enabled=true
minerRecipe.name="space-miner"
minerRecipe.ingredients={{"copper-plate",200},{"steel-plate",50}}
minerRecipe.result="space-miner"

local spaceOre=table.deepcopy(data.raw.resource["iron-ore"])
spaceOre.name="space-ore"
spaceOre.icons={
   {
      icon=spaceOre.icon,
      tint={r=1,g=0,b=0,a=0.3}
   },
}
spaceOre.autoplace=nil


data:extend({spaceOre})
data:extend({spaceMiner},{minerRecipe})