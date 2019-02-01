require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "#create" do
    it "creates event with end_time field" do
      user = User.create
      event = Event.create!(user: user, start_time: "2018-10-19 1:00:00")

      expect(event.end_time).to eq("2018-10-19 2:30:00")
    end
  end
end
