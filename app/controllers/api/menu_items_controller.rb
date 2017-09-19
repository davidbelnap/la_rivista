class Api::MenuItemsController < ApplicationController
  before_action :set_api_menu_item, only: [:show, :update, :destroy]

  # GET /api/menu_items
  # GET /api/menu_items.json
  def index
    @api_menu_items = MenuItem.all
  end

  # GET /api/menu_items/1
  # GET /api/menu_items/1.json
  def show
  end

  # POST /api/menu_items
  # POST /api/menu_items.json
  def create
    @api_menu_item = MenuItem.new(api_menu_item_params)

    if @api_menu_item.save
      render :show, status: :created
    else
      render json: @api_menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/menu_items/1
  # PATCH/PUT /api/menu_items/1.json
  def update
    if @api_menu_item.update(api_menu_item_params)
      render :show, status: :ok, location: @api_menu_item
    else
      render json: @api_menu_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/menu_items/1
  # DELETE /api/menu_items/1.json
  def destroy
    @api_menu_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_menu_item
      @api_menu_item = MenuItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_menu_item_params
      params.fetch(:menu_item).permit(:name, :description, :category, :price)
    end
end
