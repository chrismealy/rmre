namespace :db do
  namespace :models do
    desc "Create model files based on schema.rb"
    task :create => :environment do
      config = ActiveRecord::Base.connection.instance_variable_get('@config')
      g = Rmre::Generator.new(config, File.join(Rails.root, 'app', 'models'), '')
      g.connect
      g.create_models(g.connection.tables)
    end
  end
end
