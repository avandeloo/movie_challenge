class LoadView
  def ask_to_reload(date)
    puts ""
    puts "Would you like to load the current movies for #{date.strftime('%b %d, %Y')}?"
    puts "Type 'yes' or 'no'"
  end

  def finished
    puts ""
    puts camera_image
    puts ""
    puts "Movie List has been compiled."
    puts ""
  end

  def camera_image
    <<-CAMERA
                           ,-:///-.                 
                        :ymMMMMMMMMNh+`             
                      /mMmdmMMMMMMNddMMs`           
           ,...     `hMN-   .dMMM/   `yMN-          
       .odNMMMMMdo. yMMh     oMMN`    :MMN.         
      sNs/+dMMmo/sNhMMMMh+:/yMMMMm+:/sNMMMo         
     yMh   -MM/   sMMMMMMMMMMMMMMMMMMMMMMMy         
    .MMMhssNMMNyohMMMMMM+. `/NMMMs-``:mMMM+         
    .MMMy+omMMNo+sMMMMMy     oMMm     :MMd          
     oMh   -MM:   sMy/NMo.`.+NMMMs-``:mMy`          
      /NyosmMMNsoyMy--:dMMMMMMMMMMMMMMh-        ``  
       `yMMMMMMMMMMMMMMMMMMMMMMMMMNs/`      ,:odM:  
     +MMMMMMMMNNNNMMMMMMMMMMMMMMMMMMN`. ,:sdMMMMM:  
     +MMMMMMNNMNNMNMMNMNNNMNNNNNNNNNN/sdMMMMMMMMM:  
     +MMMMMMNMNmNMNNMNNNNMMNNNNNNNNNNMMMMMMMMMMMM:  
     +MMMMMMMNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:  
     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:  
     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:  
     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:  
     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM`:sdMMMMMMMM:  
     :hhhhhhhhhhhhMMMMMMMMhhhhhhhhhhh    `:sdMMMM:  
                 sMMM++MMMs                  `:od:  
                yMMM/  /MMMy                        
               hMMN:    :NMMh`                      
             `hMMN:      -NMMh`                     
            `dMMN-        -NMMd`                    
           `dMMm.          .mMMm`                   
           -///.            .///-                   
                                                    
    CAMERA
  end
end