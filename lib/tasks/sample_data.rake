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
  end
end