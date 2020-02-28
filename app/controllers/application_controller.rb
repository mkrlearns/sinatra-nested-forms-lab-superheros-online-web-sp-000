require 'sinatra/base'
class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get('/') {erb :super_hero}

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each { |hero| Hero.new(hero) }
      @members = Hero.all
      erb :team
    end

end
