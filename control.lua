script.on_event({defines.events.on_rocket_launched},
   function (rocket)
      print(rocket.get_driver().name);
   end
)