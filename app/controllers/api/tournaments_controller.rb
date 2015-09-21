class Api::TournamentsController < ApplicationController
  def index
  	tournaments = Tournament.all
    render json: tournaments
  end
  def create
  	tournament = Tournament.create(name: params[:tournament][:name])
  	render json: tournament, status: 201
  end
  def destroy
  	Tournament.destroy(params[:id])
  	tournaments = Tournament.all
  	render json: tournaments
  end
end