require 'json'
require 'date'

class Events_List
  attr_accessor :open_time, :close_time, :screen_num



  def initialize

    weekend = ["Friday", "Saturday", "Sunday"]
    today = Date.today
    @day = today.strftime("%A")
    if weekend.include?(@day)
      @open_time = Time.new(today.year, today.month, today.day, 10, 30)
      @close_time = Time.new(today.year, today.month, today.day, 24)
    else
      @open_time = Time.new(today.year, today.month, today.day, 11)
      @close_time = Time.new(today.year, today.month, today.day, 23)
    end

    @screen_num = 21
    @movies_collection = []
  end

  def create_events
    json_data = File.read('movie_list.json')
    movies_data = JSON.parse(json_data)
    movies_data.each do |movie|
      @movies_collection << movie
    end
    @movies_collection
  end

  def check_time_left
    min_left = ((@close_time - @open_time)) - (15 * 60)
  end

end