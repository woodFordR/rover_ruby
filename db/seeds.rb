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
    code_snippet: "def grab_links(uri)\n" +
      "\timage_urls = URI.open(uri) do |f|\n" +
      "\t\tf.read.scan(/.*?<link.*?as=\"image\" href=(\".*?\").*?/m)\n" +
      "\tend\n" +
      "\timage_urls.map { |f| /.*(https.*\.png).*/.match(f[0])[1] }\n" +
      "end\n",
    code_description: "In this application, ",
    code_link: "https://github.com/woodFordR/emberman/blob/main/extensions/image_tracker.rb",
    deploy_link: "",
    description: "A static ruby site built with middleman and emberjs.",
    logo: "packer",
    owner: "woodFordR",
    title: "emberman",
  },
  {
    code_snippet: "async function fetchAllPosts() {\n" +
      "\tconst response = await fetch(\`${API_URL}\`);\n" +
      "\tif (!response.ok) {\n" +
      "\t\tthrow new Error(response.statusText);\n" +
      "\t}\n" +
      "\treturn response.json();\n" +
      "}\n",
    code_description: "In this application, ",
    code_link: "https://github.com/woodFordR/rr-blog/blob/main/frontend/src/services/postService.js",
    deploy_link: "",
    description: "A blogging application built with ruby on rails and reactjs.",
    logo: "waypoint",
    owner: "woodFordR",
    title: "rr-blog"
  },
  {
    code_snippet: "import Component from '@glimmer/component';\n\n" +
      "export default class RentalsFilterComponent extends Component {\n" +
      "\tget results() {\n" +
      "\t\tlet { rentals, query } = this.args;\n" +
      "\t\tif (query) {\n" +
      "\t\t\trentals = rentals.filter((rental) => rental.title.includes(query));\n" +
      "\t\t}\n" +
      "\treturn rentals;\n" +
      "\t}\n" +
      "}\n",
    code_description: "In this application, ",
    code_link: "https://github.com/woodFordR/superRentals/blob/main/app/components/rentals/filter.js",
    deploy_link: "",
    description: "An emberjs application.",
    logo: "vault",
    owner: "woodFordR",
    title: "superRentals"
  },
  {
    code_description: "In this blogging application, I have a snippet " +
      "of code written in JS displaying lottiefiles. Lottiefiles are animations " +
      "used for applications. This is a simple hover script for the coffee cup.",
    code_link: "https://github.com/woodFordR/blog/blob/main/_layouts/home.html#L49C1-L60C10",
    code_snippet: "var coffeeLottie = lottie.loadAnimation({\n" +
      "\tcontainer:coffeeSvg,\n" +
      "\trenderer:'svg',\n" +
      "\tloop:true,\n" +
      "\tautoplay:true,\n" +
      "\tpath:'lottie/coffee.json'\n" +
      "});\n",
    deploy_link: "https://blog.kaewell.com",
    description: "A blog built with ruby and jekyll.rb",
    logo: "terraform",
    owner: "https://github.com/woodFordR/blog",
    title: "Woodford's Den"
  },
  {
    code_snippet:
      "module Cookbook\n" +
      "\tmodule Views\n" +
      "\t\tmodule Views\n" +
      "\t\t\tmodule Home\n" +
      "\t\t\t\tclass Show < Cookbook::View\n" +
      "\t\t\t\t\texpose :recipes do\n" +
      "\t\t\t\t\t\t[\n" +
      "\t\t\t\t\t\t\t{\n" +
      "\t\t\t\t\t\t\t\tname: \"Cinnamon Rolls\",\n" +
      "\t\t\t\t\t\t\t\tdescription: \"Big, fluffy, soft and absolutely delicious...\"\n" +
      "\t\t\t\t\t\t\t}\n" +
      "\t\t\t\t\t\t]\n" +
      "\t\t\t\t\tend\n" +
      "\t\t\t\tend\n" +
      "\t\t\tend\n" +
      "\t\tend\n" +
      "\tend\n" +
      "end\n",
    code_description: "In hanami all the 'App' code lives in the same " +
      "namespace and shares the same name. It is very quick to mock " +
      "data for a homepage view. This is the view class " +
      "for the root page.",
    code_link: "https://github.com/woodFordR/cookbook/blob/main/app/views/home/show.rb",
    deploy_link: "",
    description: "A refreshing hanami app built with ruby.",
    logo: "nomad",
    owner: "woodFordR",
    title: "cookbook"
  }
].each do |project|
  Project.create(project)
end