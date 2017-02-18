class Scheduled_Event
  attr_accessor :start_time, :end_time, :title

  def initialize(hash)
    @title = hash["title"]
    @rating = hash["rating"]
    @run_time = hash["run_time"]
    @start_times = hash["start_times"]
    @end_times = hash["end_times"]
  end
end