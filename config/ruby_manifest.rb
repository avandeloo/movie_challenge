#Configuration files
require_relative 'movie_loader.rb'

# Controllers
require_relative '../controllers/scheduler_controller.rb'

#Models
#put model require_relative lines here here
require_relative '../models/events_list.rb'
require_relative '../models/movie.rb'
require_relative '../models/scheduled_event.rb'

#Views
require_relative '../views/load_view.rb'
require_relative '../views/runner_view.rb'
require_relative '../views/movie_view.rb'
# add other views if needed
