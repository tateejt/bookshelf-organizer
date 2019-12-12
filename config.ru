require_relative './config/environment'

require './config/environment'

# if ActiveRecord::Migrator
#     raise "Migrations are pending. Run 'rake db:migrate' to migrate files."
# end

# use Rake::MethodOverride
use SessionsController
use BooksController
use UsersController
run ApplicationController