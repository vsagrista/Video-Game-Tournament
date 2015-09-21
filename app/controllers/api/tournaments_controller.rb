class Api::TournamentsController < ApplicationController
  def index
  	tournaments = Tournament.all
    render json: tournaments
  end
  def create
  	tournament = Tournament.create(name: params[:tournament][:name])
  	render json: tournament, status: 201
  end
end