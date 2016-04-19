require 'sinatra'
require 'wiringpi2'
require 'bundler'

Bundler.setup
Bundler.require


Delay_Time = 2




  def power(status)
    if status == "on"
      puts "the power is now on"
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
  puts "System OFF"
end

begin
  io = WiringPi::GPIO.new do |gpio|
  gpio.pin_mode(9, WiringPi::INPUT)
  pin_state = io.digital_read(9)
  puts pin_state
end if io.pin_state == high do
  delay_on
end
if io.pin_state == low do
  delay_off
end
end



###############Web Interface##############

get '/' do
  puts "tets"
  @system_on = delay_on
  erb :index
end
