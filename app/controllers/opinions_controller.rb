class OpinionsController < ApplicationController
  before_action :set_opinion, only: %i[ show edit update destroy ]

  def index
    @opinions = Opinion.order(updated_at: :desc)
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  def new
    @opinion = Opinion.new
  end

  def edit
  end

  def create
    @opinion = Opinion.new(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.html { redirect_to opinion_url(@opinion), notice: "opinion was successfully created." }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @opinion.update(opinion_params)
        format.html { redirect_to opinion_url(@opinion), notice: "opinion was successfully updated." }
        format.json { render :show, status: :ok, location: @opinion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @opinion.destroy

    respond_to do |format|
      format.html { redirect_to opinion_url, notice: "Opinion was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private

    def set_opinion
      @opinion = Opinion.find(params[:id])
    end

    def opinion_params
      params.require(:opinion).permit(:title, :description, :content, :header_image)
    end

end
