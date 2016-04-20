module Main
  class ControlsController < Volt::ModelController

    def BTN_poweron
     promise = ControlTask.power("on")
     @systemstatus = "FUCKING ON"
     puts @systemstatus
     stat
    end

    def stat
      puts @systemstatus
    end

    def BTN_poweroff
      promise = ControlTask.power("off")
      @systemstatus = "FUCKING OFF"
    end
  end
end
