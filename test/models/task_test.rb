require 'test_helper'

class TaskTest < ActiveSupport::TestCase
	
test "is delayed" do
 task = Task.new
 task.deadline = Date.today - 10.days
 assert task.is_delayed?
end

test "is not delayed" do
 task = Task.new
 task.deadline = Date.today + 10.days
 assert !task.is_delayed?
end

test "is not delayed if deadline is today" do
 task = Task.new
 task.deadline = Date.today
 assert !task.is_delayed?
end

end
