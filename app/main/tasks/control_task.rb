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
  setup
  circuit1.on
  puts "circuit 1 ON"
  sleep(Delay_Time)
  circuit2.on
  puts "circuit 2 ON"
  sleep(Delay_Time)
  circuit3.on
  puts "circuit 3 ON"
  sleep(Delay_Time)
  circuit4.on
  puts "circuit 4 ON"
  sleep(Delay_Time)
  circuit5.on
  puts "circuit 5 ON"
  sleep(Delay_Time)
  circuit6.on
  puts "circuit 6 ON"
  sleep(Delay_Time)
  circuit7.on
  puts "circuit 7 ON"
  sleep(Delay_Time)
  circuit8.on
  puts "circuit 8 ON"
  sleep(Delay_Time)
  circuit9.on
  puts "circuit 9 ON"
  sleep(1)
  circuit10.on
  puts "System ON"
end

def dlay_off
  puts "circit 9 OFF"
  sleep(Delay_Time)
  puts "Circuit 8 OFF"
  sleep(Delay_Time)
  puts ""
end

def setup
  circuit1 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit2 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit3 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit4 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit5 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit6 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit7 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit8 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit9 = PiPiper::Pin.new(:pin => 17, :direction => :out)
  circuit10 = PiPiper::Pin.new(:pin => 17, :direction => :out)
end


end
