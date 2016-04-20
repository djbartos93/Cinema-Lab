class ControlTask < Volt::Task

Delay_Time = 0

def show_stats

      {
      ruby_version:     RUBY_VERSION, # note that these are constants always available in Ruby
      ruby_description: "something #{@systemstatus}",
      ruby_platform:    RUBY_PLATFORM
    }
end

def pwrstatus
  print @systemstatus
end

  def power(status)
    if status == "on"
      puts "the power is now on"
        @systemstatus = "FUCK yourself"
      delay_on
    end
    if status == "off"
      puts "the power is now off"
      delay_off
    end
  end
def delay_on
  io = WiringPi::GPIO.new do |gpio|
    gpio.pin_mode(0, WiringPi::OUTPUT)
    gpio.pin_mode(1, WiringPi::OUTPUT)
    gpio.pin_mode(2, WiringPi::OUTPUT)
    gpio.pin_mode(3, WiringPi::OUTPUT)
    gpio.pin_mode(4, WiringPi::OUTPUT)
    gpio.pin_mode(5, WiringPi::OUTPUT)
    gpio.pin_mode(6, WiringPi::OUTPUT)
    gpio.pin_mode(7, WiringPi::OUTPUT)
    gpio.pin_mode(8, WiringPi::OUTPUT)
  end
  io.digital_write(0, WiringPi::HIGH)
  puts "circuit 1 ON"
  sleep(Delay_Time)
  io.digital_write(1, WiringPi::HIGH)
  puts "circuit 2 ON"
  sleep(Delay_Time)
  io.digital_write(2, WiringPi::HIGH)
  puts "circuit 3 ON"
  sleep(Delay_Time)
  io.digital_write(3, WiringPi::HIGH)
  puts "circuit 4 ON"
  sleep(Delay_Time)
  io.digital_write(4, WiringPi::HIGH)
  puts "circuit 5 ON"
  sleep(Delay_Time)
  io.digital_write(5, WiringPi::HIGH)
  puts "circuit 6 ON"
  sleep(Delay_Time)
  io.digital_write(6, WiringPi::HIGH)
  puts "circuit 7 ON"
  sleep(Delay_Time)
  io.digital_write(7, WiringPi::HIGH)
  puts "circuit 8 ON"
  sleep(Delay_Time)
  io.digital_write(8, WiringPi::HIGH)
  puts "circuit 9 ON"
  sleep(1)
  puts "System ON"

end

def dlay_off
  io = WiringPi::GPIO.new do |gpio|
    gpio.pin_mode(0, WiringPi::OUTPUT)
    gpio.pin_mode(1, WiringPi::OUTPUT)
    gpio.pin_mode(2, WiringPi::OUTPUT)
    gpio.pin_mode(3, WiringPi::OUTPUT)
    gpio.pin_mode(4, WiringPi::OUTPUT)
    gpio.pin_mode(5, WiringPi::OUTPUT)
    gpio.pin_mode(6, WiringPi::OUTPUT)
    gpio.pin_mode(7, WiringPi::OUTPUT)
    gpio.pin_mode(8, WiringPi::OUTPUT)
  end
  io.digital_write(8, WiringPi::LOW)
  puts "circit 9 OFF"
  sleep(Delay_Time)
  io.digital_write(7, WiringPi::LOW)
  puts "Circuit 8 OFF"
  sleep(Delay_Time)
  io.digital_write(6, WiringPi::LOW)
  puts "Circuit 7 OFF"
  sleep(Delay_Time)
  io.digital_write(5, WiringPi::LOW)
  puts "Circuit 6 OFF"
  sleep(Delay_Time)
  io.digital_write(4, WiringPi::LOW)
  puts "Circuit 5 OFF"
  sleep(Delay_Time)
  io.digital_write(3, WiringPi::LOW)
  puts "Circuit 4 OFF"
  sleep(Delay_Time)
  io.digital_write(2, WiringPi::LOW)
  puts "Circuit 3 OFF"
  sleep(Delay_Time)
  io.digital_write(1, WiringPi::LOW)
  puts "Circuit 2 OFF"
  sleep(Delay_Time)
  io.digital_write(0, WiringPi::LOW)
  puts "Circuit 1 OFF"
  sleep(1)
  @systemstatus = "OFF"
  puts "System OFF"
end







end
