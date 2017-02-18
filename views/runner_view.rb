class RunnerView
  def ask_if_user_is_finished
    puts ""
    puts "Type 'all' to view a compiled list."
    puts "Type 'select' to select a movie and view its showings."
    puts "Type 'end' to exit program if you are done."
  end

  def three_d_question
    puts ""
    puts "Do you want the Standard or 3D Verison?"
  end

  def good_bye_message
    reset_screen!
    puts ""
    puts "Thank you for using Movie Scheduler."
  end

  def reset_screen!
    print "\e[2J"
    print "\e[H"
  end
end