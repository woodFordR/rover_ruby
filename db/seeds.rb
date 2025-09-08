# example user seed data

seed_user = {
  first_name: "Adam",
  last_name: "Kaewell",
  username: "akaewell",
  email: "adam@kaewell.com",
  password: "abcd1234"
}

user = User.create({
  first_name: seed_user[:first_name],
  last_name: seed_user[:last_name],
  username: seed_user[:username],
  email: seed_user[:email],
  password: seed_user[:password]
})
user.save!




logo_options = ['nomad', 'packer', 'vagrant', 'terraform', 'waypoint', 'hcp',
  'boundary', 'consul', 'vault', 'vault-secrets', 'vault-radar']

[
  {
    code_snippet: "def grab_links(uri)\n" +
      "\timage_urls = URI.open(uri) do |f|\n" +
      "\t\tf.read.scan(/.*?<link.*?as=\"image\" href=(\".*?\").*?/m)\n" +
      "\tend\n" +
      "\timage_urls.map { |f| /.*(https.*\.png).*/.match(f[0])[1] }\n" +
      "end\n",
    code_description: "This function provides logic to collect images from " +
      "a provided link and maps them to an arrary.",
    code_link: "https://github.com/woodFordR/emberman/blob/main/extensions/image_tracker.rb",
    deploy_link: "",
    description: "A static ruby site built with middleman and emberjs.",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "emberman",
    code_language: "ruby",
    user_id: user.id
  },
  {
    code_snippet: "async function fetchAllPosts() {\n" +
      "\tconst response = await fetch(\`${API_URL}\`);\n" +
      "\tif (!response.ok) {\n" +
      "\t\tthrow new Error(response.statusText);\n" +
      "\t}\n" +
      "\treturn response.json();\n" +
      "}\n",
    code_description: "A simple asynchronous function to fetch all blog posts.",
    code_link: "https://github.com/woodFordR/rr-blog/blob/main/frontend/src/services/postService.js",
    deploy_link: "",
    description: "A blogging application built with ruby on rails and reactjs.",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "rr-blog",
    code_language: "javascript",
    user_id: user.id
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
    code_description: "A search & filter component with a glimmer component using ember.js",
    code_link: "https://github.com/woodFordR/superRentals/blob/main/app/components/rentals/filter.js",
    deploy_link: "",
    description: "An emberjs application.",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "superRentals",
    code_language: "javascript",
    user_id: user.id
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
    deploy_link: "",
    description: "A blog built with ruby and jekyll.rb",
    logo: logo_options[rand(11)],
    owner: "https://github.com/woodFordR/blog",
    title: "Woodford's Den",
    code_language: "javascript",
    user_id: user.id
  },
  {
    code_snippet:
      "module Home\n" +
      "\tclass Show < Cookbook::View\n" +
      "\t\texpose :recipes do\n" +
      "\t\t\t[{\n" +
      "\t\t\t\tname: \"Cinnamon Rolls\",\n" +
      "\t\t\t\tdescription: \"Big, fluffy, soft and absolutely delicious...\"\n" +
      "\t\t\t}]\n" +
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
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "cookbook",
    code_language: "ruby",
    user_id: user.id
  }
].each do |item|
  puts item
  Project.create(item)
end


# avatar.attach(io: File.open("{Dir.pwd}/public/images/#{avatar_file}"),
#   filename: avatar_file,content_type: 'image/jpg')


# @user.resume.attach(
#   io: File.open('/path/to/file'),
#   filename: 'file.pdf',
#   content_type: 'application/pdf',
#   identify: false
# )
