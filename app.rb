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
  get "/new" do
    erb :new
  end

  #CREATE
  post "/drinks" do
    p params
    @drink = Drink.create(params[:drink])
    if @drink.save
      redirect("/drinks/#{@drink.id}")
    else
      erb :new
    end
  end

    #EDIT
    #get '/drinks/:id/edit' do
      #erb :edit
      #Would direct to "edit" page. Create edit form/functionality on the "show" page instead.
    #end
  #
  # #UPDATE
  # put '/drinks/:id' do
  #   @drink = Drink.find(params[:id])
  #   if @drink.update_attributes(params[:drink])
  #     redirect("/drinks/#{drink.id}")
  #   else
  #     erb(:"drinks/edit")
  #   end
  # end

  #DESTROY
  post '/drinks/:id/' do
    @drink = Drink.find(params[:id])
    if @drink.destroy
      redirect('/drinks')
    else
      redirect("/drinks/#{@drink.id}")
    end
  end

end
