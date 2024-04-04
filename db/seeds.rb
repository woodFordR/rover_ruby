# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

logo_options = ['nomad', 'packer', 'vagrant', 'terraform', 'waypoint']

[
  {
    title: "emberman",
    description: "A static ruby site built with middleman and emberjs.",
    logo: "packer",
    owner: "woodFordR"
  },
  {
    title: "rr-blog",
    description: "A blogging application built with ruby on rails and reactjs.",
    logo: "waypoint",
    owner: "woodFordR"
  },
  {
    title: "superRentals",
    description: "An emberjs application.",
    logo: "vault",
    owner: "woodFordR"
  }
].each do |project|
  Project.create(project)
end