class HeroesController < ApplicationController
  def index
    render json: Hero.collection_serialize(Hero.all)
  end

  def show
    @hero = Hero.find_by(params[:id])
    render json: @hero.serialize
  end
end
