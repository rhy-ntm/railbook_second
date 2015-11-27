class BoooksController < ApplicationController
  before_action :set_boook, only: [:show, :edit, :update, :destroy]

  # GET /boooks
  # GET /boooks.json
  def index
    @boooks = Boook.all
  end

  # GET /boooks/1
  # GET /boooks/1.json
  def show
  end

  # GET /boooks/new
  def new
    @boook = Boook.new
  end

  # GET /boooks/1/edit
  def edit
  end

  # POST /boooks
  # POST /boooks.json
  def create
    @boook = Boook.new(boook_params)

    respond_to do |format|
      if @boook.save
        format.html { redirect_to @boook, notice: 'Boook was successfully created.' }
        format.json { render :show, status: :created, location: @boook }
      else
        format.html { render :new }
        format.json { render json: @boook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boooks/1
  # PATCH/PUT /boooks/1.json
  def update
    respond_to do |format|
      if @boook.update(boook_params)
        format.html { redirect_to @boook, notice: 'Boook was successfully updated.' }
        format.json { render :show, status: :ok, location: @boook }
      else
        format.html { render :edit }
        format.json { render json: @boook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boooks/1
  # DELETE /boooks/1.json
  def destroy
    @boook.destroy
    respond_to do |format|
      format.html { redirect_to boooks_url, notice: 'Boook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def search
    @boooks = Boook.where(title: params["search"]["title"])
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boook
      @boook = Boook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boook_params
      params.require(:boook).permit(:isbn, :title, :price, :publish, :published, :cd)
    end
end
