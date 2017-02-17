class Timer
  #write your code here
  def initialize
    @seconds = 0
    @mins = 0
    @hours = 0
  end
  def seconds
    @seconds
  end
  def seconds= (seconds)
    @seconds = seconds
    if @seconds > 60
      @mins = @seconds / 60
      @seconds = @seconds % 60
      if @mins > 60
        @hours = @mins / 60
        @mins = @mins % 60
      end
    end
  end
  def time_string
    str = ''
    if @hours.to_s.length == 1
      str = str + '0'
    end
    str = str + @hours.to_s + ':'
    if @mins.to_s.length == 1
      str = str + '0'
    end
    str = str + @mins.to_s + ':'
    if @seconds.to_s.length == 1
      str = str + '0'
    end
    str = str + @seconds.to_s
  end

end
