class ShortcutsController < ApplicationController
  before_action :set_shortcut, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /shortcuts
  # GET /shortcuts.json
  def index
    @shortcuts = Shortcut.all
    respond_with shortcuts: @shortcuts
  end

  # GET /shortcuts/1
  # GET /shortcuts/1.json
  def show
    respond_with @shortcut
  end

  # GET /shortcuts/new
  def new
    @shortcut = Shortcut.new
    respond_with @shortcut
  end

  # GET /shortcuts/1/edit
  def edit
    respond_with @shortcut
  end

  # POST /shortcuts
  # POST /shortcuts.json
  def create
    @shortcut = Shortcut.new(shortcut_params)
    if @shortcut.save
      respond_with @shortcut, status: :created
    else
      respond_with @shortcut.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shortcuts/1
  # PATCH/PUT /shortcuts/1.json
  def update
    if @shortcut.update(shortcut_params)
      respond_with @shortcut, status: :ok
    else
      respond_with @shortcut.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shortcuts/1
  # DELETE /shortcuts/1.json
  def destroy
    @shortcut.destroy
    head(:no_content)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortcut
      @shortcut = Shortcut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shortcut_params
      params.require(:shortcut).permit(:title, :key)
    end
end
