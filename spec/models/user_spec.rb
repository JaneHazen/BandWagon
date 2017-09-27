require 'rails_helper'

RSpec.describe User, type: :model do
  let(:valid_user) {
    {first_name: "Person", last_name: "Name", email: "a@b.com", password: "123456"}
  }

  describe "create user" do
    it "creates a new user" do
      user = User.new(valid_user)
      user.save
      u = User.last
      expect(u.first_name).to eq("Person")
    end

    it "requires a unique email" do
      User.create(valid_user)
      u = User.new(valid_user)
      u.save
      expect(u.errors.full_messages).to eq(["Email has already been taken"])
    end

    it "has no concerts upon creation" do
      user = User.create(valid_user)
      expect(user.concerts.count).to eq 0
    end

    it "has no attendances upon creation" do
      user = User.create(valid_user)
      expect(user.attendances.count).to eq 0
    end

    it "requires a first name" do
      user = User.new(first_name: "", last_name: "tom", email: "tom@tom.com", password: "chuck")
      user.save
      expect(user.errors.full_messages).to eq(["First name can't be blank"])
    end
  end
end