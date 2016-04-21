class ControlController < ApplicationController

  before_action :set_control, only: [:edit, :update, :show]
  def index
  @Control = Control.all
  @control = Control.new
  puts "#{Control.power}"
   Thread.new do
      check_status
    end
  end
  def create
    @control = Control.new(control_params)

    respond_to do |format|
      if @control.save
        format.html { redirect_to @control, notice: 'control was successfully created.' }
        format.json { render :show, status: :created, location: @control }
      else
        format.html { render :new }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @controls = Control.new
  end


  def update
    @controls.update_attributes(control_params)
    redirect_to :action => 'index'
  end

  def check_status
      if Control.power == "on"
        print "System is on"
        Thread.new do
          power_on
        end
      elsif Control.power == "off"
        print "System is off"
        Thread.new do
          power_off
        end
      end
  end


  private
  Delay_Time = 1

  def power_on
    #  io = WiringPi::GPIO.new do |gpio|
    #    gpio.pin_mode(0, WiringPi::OUTPUT)
    #    gpio.pin_mode(1, WiringPi::OUTPUT)
    #    gpio.pin_mode(2, WiringPi::OUTPUT)
    #    gpio.pin_mode(3, WiringPi::OUTPUT)
    #    gpio.pin_mode(4, WiringPi::OUTPUT)
    #    gpio.pin_mode(5, WiringPi::OUTPUT)
    #    gpio.pin_mode(6, WiringPi::OUTPUT)
    #    gpio.pin_mode(7, WiringPi::OUTPUT)
    #    gpio.pin_mode(8, WiringPi::OUTPUT)
    #  end
    #  io.digital_write(0, WiringPi::HIGH)
      puts "circuit 1 ON"
      sleep(Delay_Time)
      #  io.digital_write(1, WiringPi::HIGH)
      puts "circuit 2 ON"
      sleep(Delay_Time)
      #  io.digital_write(2, WiringPi::HIGH)
      puts "circuit 3 ON"
      sleep(Delay_Time)
      #  io.digital_write(3, WiringPi::HIGH)
      puts "circuit 4 ON"
      sleep(Delay_Time)
      #  io.digital_write(4, WiringPi::HIGH)
      puts "circuit 5 ON"
      sleep(Delay_Time)
      #  io.digital_write(5, WiringPi::HIGH)
      puts "circuit 6 ON"
      sleep(Delay_Time)
      #  io.digital_write(6, WiringPi::HIGH)
      puts "circuit 7 ON"
      sleep(Delay_Time)
      #  io.digital_write(7, WiringPi::HIGH)
      puts "circuit 8 ON"
      sleep(Delay_Time)
      #  io.digital_write(8, WiringPi::HIGH)
      puts "circuit 9 ON"
      sleep(1)
      puts "System ON"

  end


  def power_off
      #io = WiringPi::GPIO.new do |gpio|
      #  gpio.pin_mode(0, WiringPi::OUTPUT)
      #  gpio.pin_mode(1, WiringPi::OUTPUT)
      #  gpio.pin_mode(2, WiringPi::OUTPUT)
      #  gpio.pin_mode(3, WiringPi::OUTPUT)
      #  gpio.pin_mode(4, WiringPi::OUTPUT)
      #  gpio.pin_mode(5, WiringPi::OUTPUT)
      #  gpio.pin_mode(6, WiringPi::OUTPUT)
      #  gpio.pin_mode(7, WiringPi::OUTPUT)
      #  gpio.pin_mode(8, WiringPi::OUTPUT)
    #  end
    #  io.digital_write(8, WiringPi::LOW)
      puts "circit 9 OFF"
      sleep(Delay_Time)
    #  io.digital_write(7, WiringPi::LOW)
      puts "Circuit 8 OFF"
      sleep(Delay_Time)
    #  io.digital_write(6, WiringPi::LOW)
      puts "Circuit 7 OFF"
      sleep(Delay_Time)
    #  io.digital_write(5, WiringPi::LOW)
      puts "Circuit 6 OFF"
      sleep(Delay_Time)
    #  io.digital_write(4, WiringPi::LOW)
      puts "Circuit 5 OFF"
      sleep(Delay_Time)
    #  io.digital_write(3, WiringPi::LOW)
      puts "Circuit 4 OFF"
      sleep(Delay_Time)
    #  io.digital_write(2, WiringPi::LOW)
      puts "Circuit 3 OFF"
      sleep(Delay_Time)
    #  io.digital_write(1, WiringPi::LOW)
      puts "Circuit 2 OFF"
      sleep(Delay_Time)
    #  io.digital_write(0, WiringPi::LOW)
      puts "Circuit 1 OFF"
      sleep(1)
      puts "System OFF"
  end

  def control_params
    params.require(:control).permit(:value, :key)
  end

     def set_control
       @controls = Control.find params[:id]
     end

end
