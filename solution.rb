require "sinatra"

get '/' do
  erb :index
end

post '/answer' do
  @word = params[:word]
    if @word == @word.upcase
      @answer = "Ahhh si, manzanas!"
    else
      @answer = "Habla más duro mijito"
    end
    erb :answer
end
