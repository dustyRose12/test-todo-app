require 'rails_helper'

RSpec.describe Task, type: :model do
  # describe '#toggle_complete!' do
  #   it 'should switch complete to false if it began as true' do
  #     task = Task.create(complete: true)
  #     task.toggle_complete!
  #     expect(task.complete).to eq(false)
  #   end
  #    it 'should switch complete to true if it began as false' do
  #     task = Task.create(complete: false)
  #     task.toggle_complete!
  #     expect(task.complete).to eq(true)
  #   end
  # end

  #  describe '#toggle_favorite!' do
  #   it 'should switch favorite to false if it began as true' do
  #     task = Task.create(favorite: true)
  #     task.toggle_favorite!
  #     expect(task.favorite).to eq(false)
  #   end
  #    it 'should switch favorite to true if it began as false' do
  #     task = Task.create(favorite: false)
  #     task.toggle_favorite!
  #     expect(task.favorite).to eq(true)
  #   end
  # end

  # describe '#overdue?' do
  #   it 'should return true if the task is overdue, false otherwise' do
  #     task = Task.create(deadline: 1.day.ago)
  #     expect(task.overdue?).to eq(true)
  #   end
  # end

  #  describe '#increment_priority!' do
  #   it 'should increment the task priority by 1' do
  #     task = Task.create(priority: 3)
  #     task.increment_priority!
  #     expect(task.priority).to eq(4)
  #   end
  # end

  #  describe '#decrement_priority!' do
  #   it 'should decrement the task priority by 1' do
  #     task = Task.create(priority: 3)
  #     task.decrement_priority!
  #     expect(task.priority).to eq(2)
  #   end
  # end

  # describe '#snooze_hour!' do
  #   it 'should increment task deadline time by 1 hour' do
  #     now_time = Time.now
  #     task = Task.create(deadline: now_time)
  #     task.snooze_hour!
  #     expect(task.deadline).to eq(now_time + 1.hour)
  #   end
  # end


end
