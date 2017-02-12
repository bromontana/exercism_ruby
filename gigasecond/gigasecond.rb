module BookKeeping
  VERSION = 5
end


class Gigasecond
  def self.from (time)
    @time = time
    @time_seconds = @time.to_i + 1000000000
    return Time.at(@time_seconds).utc
  end
end
