class HomeController < ApplicationController
  before_action :set_keys
  def homepage
    @message = "Hello, how are you today?"
    # debugger
    arr = ["XRPUSDT", "ETHUSDT", "REEFUSDT", "MATICUSDT", "VETUSDT", "DOGEUSDT", "ICXUSDT", "FTMUSDT"]
    

  end

  private 

  def set_keys
  	@client = Binance::Client::REST.new
   	@public_key = "3LU0WdjBhcZPtwQycH26Kh3e3ulr8vf4cOJunHyW6EiB9dJMraMk0fi60d5nqAmd"
    @secret_key = "DT6GKbFBX8AHuNJVcgEUTcaMqegZxzaC8WwLGK53EYKcytNvmZuXOsWA4A8jEjGV"
    @client = Binance::Client::REST.new api_key: @public_key, secret_key: @secret_key
  end
end