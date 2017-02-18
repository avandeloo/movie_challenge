require_relative '../config/ruby_manifest.rb'
require_relative '../views/movie_view.rb'
require_relative '../models/movie.rb'


class SchedulerController
  attr_reader :load_view, :runner_view, :movie_loader, :today
  attr_accessor :finished

  def initialize
    @load_view = LoadView.new
    @runner_view = RunnerView.new
    @movie_loader = MovieLoader.new
    @today = Time.now
    @finished = false
  end

  def run_program #This is the flow of your program, call other classes and methods to complete
    load_view.ask_to_reload(today)
    reload_input = gets.chomp

    if reload_input == 'yes'
      movie_loader.compile_todays_list
      load_view.finished
    end

    until finished
      film = Movie.new
      film.gen_schedule

      runner_view.ask_if_user_is_finished

      user_choice = gets.chomp
      if user_choice == "all"
        all_movies = MovieView.new
        all_movies.show_all_movies
      end

      if user_choice == "select"
        all_movies = MovieView.new
        all_movies.show_movie
      end

      if user_choice == 'end'
        exit_program 
      end
    end    
  end

  def exit_program
    self.finished = true
    runner_view.good_bye_message
  end
end
