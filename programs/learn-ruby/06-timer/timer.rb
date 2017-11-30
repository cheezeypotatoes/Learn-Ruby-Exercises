class Timer
  def initialize
    @secs = 0
    @hoursToDisplay = 0
    @minutesToDisplay = 0
    @secondsToDisplay = 0
  end

  def seconds=(value)
     @secs = value
     @secs
  end

  def seconds
     @secs
  end

  def time_string
    if @secs < 60
      @minutesToDisplay = 0
      @hoursToDisplay = 0
      @secondsToDisplay = @secs
    else
      @minutesToDisplay = @secs / 60
      @secondsToDisplay = @secs - (@minutesToDisplay * 60)
      if @minutesToDisplay > 60
        @hoursToDisplay = @minutesToDisplay / 60
        @minutesToDisplay = @minutesToDisplay - (@hoursToDisplay * 60)
      else
      end
    end
    if (@hoursToDisplay.to_s).length < 2 || @hoursToDisplay == 0
      @hoursToDisplay = '0' + @hoursToDisplay.to_s
    else
    end

    if (@minutesToDisplay.to_s).length < 2
      @minutesToDisplay = '0' + @minutesToDisplay.to_s
    else
    end

    if (@secondsToDisplay.to_s).length < 2
      @secondsToDisplay = '0' + @secondsToDisplay.to_s
    else
    end
    
    @hoursToDisplay.to_s + ':' + @minutesToDisplay.to_s + ':' + @secondsToDisplay.to_s
  end
end


# t = Timer.new
# t.seconds
# t.seconds = 12
# t.seconds
