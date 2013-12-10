ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
 test "task can not be saved without name" do
  task = Task.new
  assert !task.save
end

test "task can be saved with name, deadline and duraton" do
 task = Task.new
 task.name = "Eine Aufgabe"
 task.deadline = Date.today + 7.days
 task.duration = 5.0
 assert task.save
end

end

