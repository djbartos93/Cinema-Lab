class ControlTask < Volt::Task

Delay_Time = 2




  def power(status)
    if status == "on"
      puts "the power is now on"
      delay_on
    end
    if status == "off"
      puts "the power is now off"
    end
  end
def delay_on
  io = WiringPi::GPIO.new do |gpio|
    gpio.pin_mode(0, WiringPi::OUTPUT)
  end
  io.digital_write(0, WiringPi::HIGH)
  puts "circuit 1 ON"
  sleep(Delay_Time)
  puts "circuit 2 ON"
  sleep(Delay_Time)
  puts "circuit 3 ON"
  sleep(Delay_Time)
  puts "circuit 4 ON"
  sleep(Delay_Time)
  puts "circuit 5 ON"
  sleep(Delay_Time)
  puts "circuit 6 ON"
  sleep(Delay_Time)
  puts "circuit 7 ON"
  sleep(Delay_Time)
  puts "circuit 8 ON"
  sleep(Delay_Time)
  puts "circuit 9 ON"
  sleep(1)
  puts "System ON"
end

def dlay_off
  puts "circit 9 OFF"
  sleep(Delay_Time)
  puts "Circuit 8 OFF"
  sleep(Delay_Time)
  puts ""
end




end
