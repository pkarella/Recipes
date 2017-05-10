require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
  @recipes = Recipe.all()
  erb(:index)
end

post('/recipe_form') do
  name = params.fetch('name')
  ingredients = params.fetch('ingredients')
  instructions = params.fetch('instructions')
  recipe = Recipe.create({:name => name, :ingredients => ingredients,:instructions => instructions})
  recipe.save()
  @recipes = Recipe.all()
  erb(:index)
end

get('/recipe_form/:id') do
  
end
