module Main
  class ControlsController < Volt::ModelController

    def BTN_poweron
     promise = ControlTask.power("on")
    end

    def BTN_poweroff
      promise = ControlTask.power("off")
    end
  end
end
