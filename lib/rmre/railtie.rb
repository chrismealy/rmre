module Rmre
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'rmre/tasks/db_create_models'
    end
  end
end
