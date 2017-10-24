require 'rails_helper'

RSpec.describe List, type: :model do

  describe '#complete_all_tasks!' do
    it 'should switch complete to true on all tasks' do
      list_one = List.create(name: "main to do list")
      list_id = list_one.id
      task_one = Task.create(complete: false, list_id: list_id)
      # task_two = Task.create(complete: false, list_id: 1)
      # task_three = Task.create(complete: true, list_id:1)

      list_one.complete_all_tasks!
      task_one.reload
      expect(task_one.complete).to eq(true)
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should snooze all tasks by 1 hour' do
      list_one = List.create(name: "main to do list")
      list_id = list_one.id
      now_time = Time.now
      task_one = Task.create(deadline: now_time , list_id: list_id)
      list_one.snooze_all_tasks!
      task_one.reload
      expect(task_one.deadline).to eq(now_time + 1.hour)
    end
  end

    describe '#total_duration' do
    it 'should return the total duration of all tasks combined' do
      list_one = List.create(name: "main to do list")
      list_id = list_one.id
      task_one = Task.create(duration: 1, list_id: list_id)
      task_two = Task.create(duration: 2, list_id: list_id)
      
      list_one.reload
      expect(list_one.total_duration).to eq(3)
    end
  end

   describe '#incomplete_tasks' do
    it 'should return an array of incomplete tasks' do
      list_one = List.create(name: "main to do list")
      list_id = list_one.id
      task_one = Task.create(complete: true, list_id: list_id)
      task_two = Task.create(complete: false, list_id: list_id)
      task_three = Task.create(complete: false, list_id: list_id)
      incomplete_tasks_array = [task_two, task_three]
      
      list_one.reload
      expect(list_one.incomplete_tasks).to eq(incomplete_tasks_array)
    end
  end

  describe '#favorite_tasks' do
    it 'should return an array of favorite tasks' do
      list_one = List.create(name: "main to do list")
      list_id = list_one.id
      task_one = Task.create(favorite: true, list_id: list_id)
      task_two = Task.create(favorite: true, list_id: list_id)
      task_three = Task.create(favorite: false, list_id: list_id)
      favorite_tasks_array = [task_one, task_two]
      
      list_one.reload
      expect(list_one.favorite_tasks).to eq(favorite_tasks_array)
    end
  end



end
