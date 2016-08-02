class TempsController < ApplicationController
  def index
    city = params['City']
    country = params['country']
    @temp = Unirest.get("http://api.openweathermap.org/data/2.5/weather?q=#{city},#{country}&units=imperial&APPID=4bd1acd4bf14c92a65c26dac90dbd5e8").body
    @temp_data = @temp['main']['temp']
    @location = @temp['name']
    time = Time.new
    render 'index.html.erb'
  end
end 
