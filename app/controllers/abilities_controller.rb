class AbilitiesController < ApplicationController
  def index
    abilities = Ability.all
    abilities = abilities.where(hero_id: params[:hero_id]) if params[:hero_id].present?
    render json: Ability.collection_serialize(abilities)
  end

  def show
    @ability = Ability.find_by(params[:id])
    render json: @ability.serialize
  end
end
