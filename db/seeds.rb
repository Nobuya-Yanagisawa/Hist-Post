# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	user_name: "管理者",
	email: "admin@admin.com",
	password: "111111",
	admin: true,
	)

User.create!(
	user_name: "ユーザー",
	email: "user@user.com",
	password: "111111",
	admin: false,
	)

10.times do |n|
	User.create!(
		user_name: "ユーザー#{n+1}",
		email: "user#{n+1}@user.com",
		password: "111111",
		admin: false,
	)
end

10.times do |n|
	Post.create!(
		user_id: rand(1..12),
		post_title: "post_title#{n+1}",
		top_explanation: "explanation#{n+1}",
	)
end