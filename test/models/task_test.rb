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

test "destance in days from today" do
  task = Task.new
  task.deadline = Date.today
  assert_equal 0, task.distance_from_now_in_days
end

test "destance in days from yesterday" do
  task = Task.new
  task.deadline = Date.today - 1
  assert_equal -1, task.distance_from_now_in_days
end

test "destance in days from tomorrow" do
  task = Task.new
  task.deadline = Date.today + 1
  assert_equal 1, task.distance_from_now_in_days
end 

end
