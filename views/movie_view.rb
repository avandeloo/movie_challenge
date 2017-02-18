class MovieView

  def show_all_movies
    collection = Movie.new
    scheduled_events = collection.gen_schedule
    puts ""
    puts "Movies showing today:"
    puts ""
    count = 1
    scheduled_events.each do |event|
      show_movies(count, event[:title], event[:run_time], event[:rating])
      count += 1
    end
  end

  def show_movie
    puts ""
    puts "Enter the number of the movie you'd like to see:"
    user_choice = gets.chomp.to_i - 1
    
    while user_choice < 0 or user_choice > 21
      puts ""
      puts "Please Choose An Existing Movie:"
      user_choice = gets.chomp.to_i - 1
    end

    puts ""
    movie = Movie.new

    movie_choice = movie.gen_schedule[user_choice]

    show_selected_movie(movie_choice[:title], movie_choice[:start_times], movie_choice[:end_times])

  end

  def show_movies(count, title, runtime, rating)
    title_line = ":"
    line2 = ""
    line3 = ":"
    line4 = ""

    title_length = title.length

    line_length = 36
    blank_space_amount = ((line_length - title_length) - 2)
    half_blank_space_amount = blank_space_amount / 2
    
    half_blank_space_amount.times do
      title_line += " "
    end

    title_line += title

    half_blank_space_amount.times do
      title_line += " "
    end

    title_line += " " if title_line.length != 35
  
    title_line += ":"

    line_length.times do
      line2 += "."
    end

    line3_length = (line_length - 2)

    line3_length.times do
      line3 += "."
    end

    line3 += ":"


    puts ""
    puts "...................................."
    if count < 10
      puts ":               #{count}                  :"
    elsif count >= 10
      puts ":               #{count}                 :"
    end
    puts ":..................................:"
    puts title_line
    puts line3
    if rating.length == 1
      puts ":     Rating    :        #{rating}         :"
    elsif rating.length == 2
      puts ":     Rating    :        #{rating}        :"
    elsif rating.length == 5
      puts ":     Rating    :      #{rating}       :"
    end
    puts line3
    if runtime.length == 11
      puts ":     Runtime   :    #{runtime}   :"
    elsif runtime.length == 10
      puts ":     Runtime   :    #{runtime}    :"
    end
    puts line3
    puts " "

  end

  def show_selected_movie(title, start_times, end_times)
    title_line = ":"
    line2 = ""
    line3 = ":"
    line4 = ""

    title_length = title.length

    line_length = 36
    blank_space_amount = ((line_length - title_length) - 2)
    half_blank_space_amount = blank_space_amount / 2
    
    half_blank_space_amount.times do
      title_line += " "
    end

    title_line += title

    half_blank_space_amount.times do
      title_line += " "
    end

    title_line += " " if title_line.length != 35
  
    title_line += ":"

    line_length.times do
      line2 += "."
    end

    line3_length = (line_length - 2)

    line3_length.times do
      line3 += "."
    end

    line3 += ":"

    puts line2
    puts title_line
    puts line3
    puts ":      Start     :       End       :"
    puts line3
    count = 0
    start_times.each do |time|

      puts ":     #{time}   :     #{end_times[count]}    :"
      puts line3
      count += 1
    end

  end

end