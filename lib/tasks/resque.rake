require "resque/tasks"

# loads up the Rails environment when you start the workers
# might want something custom to keep the workers light
task "resque:setup" => :environment