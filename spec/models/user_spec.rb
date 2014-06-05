require 'spec_helper'

describe User do

  it "has the username set correctly" do
    user = User.new username:"Tyhjis"

    expect(user.username).to eq("Tyhjis")
  end

  it "should not insert user with invalid username to database" do
    user = User.create username:"KH"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "should not insert user without a password to database" do
    user = User.create username:"Tyhjis"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "should not insert user into database with incorrect parameters" do
    user = User.create first_name:"Krisu", last_name:"Hervanta", username:"Tyhjis", email:"kristian@nonexistant.lol", password:"Sala1nen", password_confirmation:"Sala1nen"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "should inster user into database with correct parameters" do
    user = User.create first_name:"Krisu", last_name:"Hervanta", username:"Tyhjis", email:"kristian@nonexistant.lol", address:"Töölöntullinkatu 5 a 4, 00250 Helsinki", birth_date:'Thu, 27 May 1989', password:"Sala1nen", password_confirmation:"Sala1nen"
    expect(user.valid?).to be(true)
    expect(User.count).to eq(1)
  end
end
