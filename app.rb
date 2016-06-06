class DrinksApp < Sinatra::Base

  get "/" do
    "Hello, world!"
  end

  get "/drinks" do
    @drinks = Drink.all
    erb :"index"
  end

  get '/drinks/:id' do
    @drinks = Drink.all
    @drinks = Drink.find(params[:id])
    @drink.title
  end

end
