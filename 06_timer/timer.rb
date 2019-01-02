class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def padded(number)
    if number < 10 and number >= 0
      pad = "0#{number}"
    elsif number < 100 and number >= 10
      pad = number.to_s
    else
      pad = "error"
    end
    pad
  end

      
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - hours*3600) / 60
    remaining_seconds = seconds - hours*3600 - minutes*60
    "#{padded(hours)}:#{padded(minutes)}:#{padded(remaining_seconds)}"
  end
end

time = Timer.new(4000)
puts time.time_string