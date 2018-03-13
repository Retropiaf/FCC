class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show]

  def index
    data = Chapter.all.order(:id)
    render status: :ok, json: data
  end

  def show
    render status: :ok, json: @chapter
  end

  private
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    def chapter_params
      params.fetch(:chapter, {})
    end
end
