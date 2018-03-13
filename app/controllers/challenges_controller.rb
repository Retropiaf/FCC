class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show]
    before_action :get_id, only: [:index]

  def index
    puts "hello"
    puts params
    puts @id
    if params[:chapter_id]
      data = Challenge.where(chapter_id: @id).order(:order)
    else
      data = Challenge.all.order(:order)
    end
    render status: :ok, json: data
  end

  def show
    render status: :ok, json: @challenge
  end

  private
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.fetch(:challenge, {})
    end

    def get_id
      @id = params[:chapter_id]
    end
end
