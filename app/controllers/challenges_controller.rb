class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show]
    before_action :get_id, only: [:index]

  # GET /challenges
  # GET /challenges.json
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

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    render status: :ok, json: @challenge
  end

  # GET /challenges/new
  # def new
  #   @challenge = Challenge.new
  # end
  #
  # # GET /challenges/1/edit
  # def edit
  # end

  # POST /challenges
  # POST /challenges.json
  # def create
  #   @challenge = Challenge.new(challenge_params)
  #
  #   respond_to do |format|
  #     if @challenge.save
  #       format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
  #       format.json { render :show, status: :created, location: @challenge }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @challenge.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /challenges/1
  # # PATCH/PUT /challenges/1.json
  # def update
  #   respond_to do |format|
  #     if @challenge.update(challenge_params)
  #       format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @challenge }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @challenge.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /challenges/1
  # # DELETE /challenges/1.json
  # def destroy
  #   @challenge.destroy
  #   respond_to do |format|
  #     format.html { redirect_to challenges_url, notice: 'Challenge was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_params
      params.fetch(:challenge, {})
    end
    def get_id
      @id = params[:chapter_id]
    end
end
