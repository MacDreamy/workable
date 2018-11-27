# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurant = Category.create(name:"restaurant")
ellery = WorkspaceOwner.create(user_name:"ellery", email:'ellery@gmail.com')
longChaoshou = Workspace.new(name: "龙抄手", address:'春熙路',phone_number:'028-12233323',average_rating:5)

longChaoshou.category = restaurant
longChaoshou.workspace_owner = ellery

longChaoshou.save!
p longChaoshou
