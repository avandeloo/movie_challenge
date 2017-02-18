require_relative '../models/events_list.rb'
require_relative '../models/scheduled_event.rb'

class Movie
  attr_accessor :title, :time, :rating, :hours, :minutes

  def initialize(hash={})
    @title = hash["title"]
    @time = hash[
      "time"]
    @rating = hash["rating"]
    @hours = hash["hours"]
    @minutes = hash["minutes"]
  end

  def create_event(hash)
    event = Scheduled_Event.new(hash)
    @scheduled_events << event
  end

  def format_time
      run_time = @time.split[0..2]
      run_time.delete_at(1)
      run_time

      self.hours = run_time[0].to_i
      self.minutes = run_time[1].to_i
  end

  def expanded_time
    total_seconds = (self.hours * 60 * 60) + (self.minutes * 60)
    run_time = (((total_seconds)/10.0).ceil) * 10
    run_time
  end

  def run_time
    (self.hours * 3600) + (self.minutes * 60)
  end

  def gen_schedule
    @scheduled_events = []

    event_list = Events_List.new

    movies_collection = event_list.create_events

    movies_collection.each do |movie_item|
      movie = Movie.new(movie_item)
      start_times = []
      end_times = []
      movie.format_time
      opening = event_list.open_time + (15 * 60)
      run_time = movie.expanded_time
      starting = opening
      time_left = event_list.check_time_left

      while time_left > run_time

        ending = starting + run_time

        start_times << starting.strftime("%I:%M %p")
        end_times << ending.strftime("%I:%M %p")

        starting += run_time + (35 * 60)

        time_left -= run_time + (35 * 60)

      end
        
        scheduled_movie = {
                            title: movie.title,
                            rating: movie.rating,
                            run_time: movie.time,
                            start_times: start_times,
                            end_times: end_times

                          }

        @scheduled_events << scheduled_movie

    end

    @scheduled_events
  end

end