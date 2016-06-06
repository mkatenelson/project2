class DrinksApp < Sinatra::Base

  #INDEX
  get "/" do
    @drinks = Drink.all
    erb :"index"
  end

  #SHOW
  get '/drinks/:id' do
    @drinks = Drink.all
    @drink = Drink.find(params[:id])
    p @drink.name
    erb :show
  end

  #NEW
  get "/drinks/new" do
    erb :new
  end

  #CREATE
  post "/drinks" do
    #p params
    @drink = Drink.create(params[:id])
    @drink.save
    redirect "/"
  end


    #EDIT
    #get '/drinks/:id/edit' do
      #erb :edit
      #Would direct to "edit" page. Create edit form/functionality on the "show" page instead.
    #end

  #UPDATE
  put "drinks/:id" do
    @drinks = Drink.all
    @drink = Drink.find(params[:id])
    @drink.name
    @drink.save
    redirect "/"
  end

  #DESTROY
  post '/drinks/:id' do
    @drink = drink.find(params[:id])
    @drink.destroy
    redirect("/drinks")
  end

end
