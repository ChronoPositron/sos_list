# See https://github.com/voltrb/volt#routes for more info on routes

# Routes for showing the details of a list.
client '/list/{{ id }}/{{ index }}', controller: 'list', action: 'show'
client '/list/{{ id }}', controller: 'list', action: 'show'

# A simple about page.
client '/about', action: 'about'

# Routes for login and signup, provided by user_templates component gem
client '/signup', component: 'user_templates', controller: 'signup'
client '/login', component: 'user_templates', controller: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
