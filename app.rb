class DrinksApp < Sinatra::Base

  #ROOT ROUTE
  get "/" do
    @drinks = Drink.all
    p "Drinks from controller:"
    p @drinks
    #p "***"
    erb :index
  end

  #INDEX
  # get "/drinks" do
  #   @drinks = Drink.all
  #   erb :"index"
  # end

  #GET BY ID
  get '/drinks/:id' do
    @drinks = Drink.all
    @drinks = Drink.find(params[:id])
    @drink.name
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

  #SHOW
  get '/drinks/show/:id' do
     @drink = Drink.find(params[:id])
     erb :show
  end

    #EDIT
    #get '/drinks/:id/edit' do
      #erb :edit
      #Would direct to "edit" page. Create edit form/functionality on the "show" page instead.
    #end

  #UPDATE
  get "drinks/:id" do
    @drinks = Drink.all
    @drink = Drink.find(params[:id])
    @drink.name
  end

  #DESTROY
  post '/drinks/:id' do
    @drink = drink.find(params[:id])
    @drink.destroy
    redirect("/drinks")
  end

end
