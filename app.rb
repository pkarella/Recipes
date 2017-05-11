require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
  erb(:index)
end

get("/tags") do
  @tags = Tag.all()
  erb(:tags)
end

get("/recipes") do
  @recipes = Recipe.all()
  erb(:recipes)
end

post("/recipe_form") do
  @recipes = Recipe.all()
  name = params.fetch('name')
  recipe = Recipe.create({:name => name})
  recipe.save()
  erb(:recipes)
end

post("/tag_form") do
  @tags = Tag.all()
  term = params.fetch('term')
  tag = Tag.create({:term => term})
  tag.save()
  erb(:tags)
end

get("/recipe/:id") do
  @recipe = Recipe.find(params.fetch('id').to_i())
  @recipe.save()
  @recipes = Recipe.all()

  @tags = Tag.all()
#   if @recipe.tag_ids
#     @tag = Tag.find(@recipes.tag_ids)
#   else
#   @recipe = nil
# end
# @recipes = Recipe.all
  erb(:recipe)
end
