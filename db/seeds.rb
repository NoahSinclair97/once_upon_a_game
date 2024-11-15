# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.destroy_all
Category.destroy_all

games_csv = Rails.root.join('db/games.csv')

games_data = File.read(games_csv)
games = CSV.parse(games_data, headers: true)
Category.create(name: "Action")
Category.create(name: "Sports")
Category.create(name: "RPG")
Category.create(name: "Adevnture")
Category.create(name: "JRPG")
Category.create(name: "Racing")
games.each do |game|
  product = Product.create!(
    name: game[0],
    price: game[1],
    description: "TBD",
    stock: 10,
    category_id: Category.find_or_create_by!(name: "RPG").id
  )
  begin
    product.photos.attach(io: URI.open("#{game[2]}"), filename: "#{game[2]}")
  rescue
    puts "Bad data"
  end
end
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#User.create!(email: 'admin@example.com', password: 'password', password_confirmation:  'password')
#api_key = '79c787a56011d1435235f556e6105b539b42febb'
#base_url = "https://www.giantbomb.com/api/game/[guid]/?api_key=#{api_key}"
#api_endpoint = 'https://api.igdb.com/v4/games'
#request_headers = { headers: { 'client-id' => 'x6cshtv1clu11nzsye0klcvdp4p63p', 'authorization' => 'Bearer o8itc4njmnwrvgl6vo44rdzmbkfemw', 'x-user-agent' => 'ruby-apicalypse' } }

#api = Apicalypse.new(api_endpoint, request_headers)

#puts api
#  .fields(:name, :total_rating)
#  .where(category: 1)
#  .search('Call of Duty')
#  .limit(2)
#  .request


