namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create(
        name: "Admin User",
        email: "admin@teamsb.com",
        password: 'teambox',
        password_confirmation: 'teambox'
    )
    admin.toggle!(:admin)

    20.times do
      name = Faker::Lorem.sentence(1)
      description_short = Faker::Lorem.sentence(2)
      description_large = Faker::Lorem.sentence(10)

      app = App.create(name: name, description_short: description_short, description_large: description_large)
    end
  end
end