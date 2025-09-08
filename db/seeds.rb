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
    code_snippet: "with socket.create_server((SERVER, PORT), reuse_port=True) as s:\n" +
      "\t\ts.listen(5)\n" +
      "\t\ttry:\n" +
      "\t\t\t\twhile True:\n" +
      "\t\t\t\t\t\tprint(\"waiting for connection ...\")\n" +
      "\t\t\t\t\t\tconn, addr = s.accept()\n" +
      "\t\t\t\t\t\tt = threading.Thread(target=request_worker, args=(conn, addr))\n" +
      "\t\t\t\t\t\tt.start()\n" +
      "\t\texcept KeyboardInterrupt:\n" +
      "\t\t\t\tprint(\"server going going going ...\")\n" +
      "\t\tfinally:\n" +
      "\t\t\t\ts.close()\n" +
      "\t\t\t\tprint(\"server down down down ...\")\n",
    code_description: "This python code creates a socket server, allowing for " +
      "multiple connections in parallel using threads.", 
    code_link: "https://github.com/woodFordR/rack_em/blob/main/src/rack_em/main.py",
    deploy_link: "",
    description: "A simple server written in python, using uv project / package manager",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "rack_em",
    code_language: "python",
    user_id: user.id
  },
  {
    code_snippet: "@work(exclusive=True)\n" +
      "async def update_mac_os(self, name: str, value: str):\n" +
      "\t\tif name and value:\n" +
      "\t\t\t\tsetattr(self.mac_os, name, value)\n" +
      "\t\t\t\tself.mutate_reactive(BourbonApp.mac_os)\n" +
      "\t\telse:\n" +
      "\t\t\t\tself.notify(\"Error\")\n",
    code_description: "This function is a dedicated listener that watches " +
      "for changes made to BourbonApp's mac object and updates a " +
      "ComputerDeets widget.", 
    code_link: "https://github.com/woodFordR/bourbon_textual/blob/main/src/bourbon/main.py",
    deploy_link: "",
    description: "A textual ui application, using uv project / package manager",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "bourbon_textual",
    code_language: "python",
    user_id: user.id
  },
  {
    code_snippet: "@router.get("", response_model=list[UserPublic])\n" +
      "async def get_users(\n" +
      "\t\t*,\n" +
      "\t\tsession: AsyncSession = Depends(get_async_session),\n" +
      "):\n" +
      "\t\twith logfire.span(\"querying all users ...\"):\n" +
      "\t\t\t\tstatement = select(User)\n" +
      "\t\t\t\tusers = (await session.exec(statement)).all()\n\n" +
      "\t\treturn users\n",
    code_description: "A user route in a FastAPI application, with logfire " +
      "logs to fetch and grab users.",
    code_link: "https://github.com/woodFordR/bubster/blob/main/bubster_backend/bubster_backend/users/router.py",
    deploy_link: "",
    description: "An application with FastAPI & React.js",
    logo: logo_options[rand(11)],
    owner: "woodFordR",
    title: "bubster",
    code_language: "python",
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
