# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'uri'

my_string = "hello?world"
my_url_string = "https://somedomain.com?word=#{URI.encode_uri_component my_string}"

# => "https://somedomain.com?word=hello%3Fworld"[
[
  {
    code_snippet: "#{URI.encode_uri_component "def grab_links(uri)\n\timage_urls = URI.open(uri) do |f|\n\t\tf.read.scan(/.*?<link.*?as=\"image\" href=(\".*?\").*?/m)\n\tend\n\timage_urls.map { |f| /.*(https.*\.png).*/.match(f[0])[1] }\nend\n"}",
    code_description: "In this application, ",
    code_link: "#{URI.encode_uri_component "https://github.com/woodFordR/emberman/blob/main/extensions/image_tracker.rb"}",
    deploy_link: my_url_string,
    description: "A static ruby site built with middleman and emberjs.",
    logo: "packer",
    owner: "woodFordR",
    title: "emberman",
    language: "ruby"
  },
  {
    code_snippet: "#{URI.encode_uri_component "async function fetchAllPosts() {\n\tconst response = await fetch(\`${API_URL}\`);\n\tif (!response.ok) {\n\t\tthrow new Error(response.statusText);\n\t}\n\treturn response.json();\n}\n"}",
    code_description: "In this application, ",
    code_link: "#{URI.encode_uri_component "https:\/\/github.com\/woodFord\R\/r\-blog\/blob\/main\/frontend\/src\/services\/postService\.js"}",
    deploy_link: "#{URI.encode_uri_component "https\:\/\/github\.com\/woodFordR\/rr\-blog\/blob\/main\/frontend\/src\/services\/postService\.js"}",
    description: "A blogging application built with ruby on rails and reactjs.",
    logo: "waypoint",
    owner: "woodFordR",
    title: "rr-blog",
    language: "javascript"
  },
 {
    code_snippet: "#{URI.encode_uri_component "import Component from '@glimmer/component';\n\nexport default class RentalsFilterComponent extends Component {\n\tget results() {\n\t\tlet { rentals, query } = this.args;\n\t\tif (query) {\n\t\t\trentals = rentals.filter((rental) => rental.title.includes(query));\n\t\t}\n\treturn rentals;\n\t}\n}\n"}",
    code_description: "In this application, ",
code_link: "#{URI.encode_uri_component "https://github.com/woodFordR/superRentals/blob/main/app/components/rentals/filter.js"}",
    deploy_link: "#{URI.encode_uri_component "https://github.com/woodFordR/rr-blog/blob/main/frontend/src/services/postService.js"}",
    description: "An emberjs application.",
    logo: "vault",
    owner: "woodFordR",
    title: "superRentals",
    language: "javascript"
  },
  {
    code_snippet: "#{URI.encode_uri_component "class Show < Cookbook::View\n\texpose :recipes do\n\t\t[\n\t\t\t\t{\n\t\t\t\t\t\tname: \"Cinnamon Rolls\",\n\t\t\t\t\t\tdescription: \"Big, fluffy, soft and absolutely delicious...\"\n\t\t\t\t}\n\t\t]\nend\n"}", 
    code_description: "In hanami all the 'App' code lives in the same namespace and shares the same name. It is very quick to mock data for a homepage view. This is the view class for the root page.",
    code_link: "#{URI.encode_uri_component "https://github.com/woodFordR/cookbook/blob/main/app/views/home/show.rb"}",
    deploy_link: "#{URI.encode_uri_component "https://github.com/woodFordR/rr-blog/blob/main/frontend/src/services/postService.js"}",
    description: "A refreshing hanami app built with ruby.",
    logo: "nomad",
    owner: "woodFordR",
    title: "cookbook",
    language: "ruby"
  }
].each do |k,item|
  x = "#{URI.encode_uri_component "item"}"
  pretty_print(x)
  pretty_print(item)
  Product.create(item)
end

[
  {
    first_name: "Jimmy",
    last_name: "Jokes",
    username: "knockKnock",
    email: "adam@woodford.life",
    track_visits: 3141,
  },
  {
    first_name: "Tony",
    last_name: "Pepperoni",
    username: "hitOrMiss",
    email: "test@woodford.life",
    track_visits: 5598,
  },
  {
    first_name: "Donny",
    last_name: "Dimes",
    username: "heyyyyyyyAllRight",
    email: "dev@woodford.life",
    track_visits: 892376,
  },
].each do |user|
  User.create(
    :first_name => user[:first_name],
    :last_name => user[:last_name],
    :username => user[:username],
    :email => user[:email],
    :track_visits => user[:track_visits]
  )
end

