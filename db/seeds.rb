# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Daley', city: cities.first)

first_forum = Forem::Forum.create(:title => 'First test forum', :description => 'A test forum, for testing with.')
first_topic = first_forum.topics.new(:subject => 'A test topic')
first_post = first_topic.posts.build(:text => 'some content.')
first_topic.save

user = User.create(:email => 'test@test.com', :password => 'forem', :password_confirmation => 'forem')
