class SceneObjectsController < ApplicationController
  before_action :set_scene_object, only: [:show, :edit, :update, :destroy]

  # GET /scene_objects
  # GET /scene_objects.json
  def index
    @scene_objects = SceneObject.all
  end

  # GET /scene_objects/1
  # GET /scene_objects/1.json
  def show
  end

  # GET /scene_objects/new
  def new
    @scene_object = SceneObject.new
  end

  # GET /scene_objects/1/edit
  def edit
  end

  # POST /scene_objects
  # POST /scene_objects.json
  def create
    @scene_object = SceneObject.new(scene_object_params)

    respond_to do |format|
      if @scene_object.save
        format.html { redirect_to @scene_object, notice: 'Scene object was successfully created.' }
        format.json { render :show, status: :created, location: @scene_object }
      else
        format.html { render :new }
        format.json { render json: @scene_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scene_objects/1
  # PATCH/PUT /scene_objects/1.json
  def update
    respond_to do |format|
      if @scene_object.update(scene_object_params)
        format.html { redirect_to @scene_object, notice: 'Scene object was successfully updated.' }
        format.json { render :show, status: :ok, location: @scene_object }
      else
        format.html { render :edit }
        format.json { render json: @scene_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scene_objects/1
  # DELETE /scene_objects/1.json
  def destroy
    @scene_object.destroy
    respond_to do |format|
      format.html { redirect_to scene_objects_url, notice: 'Scene object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene_object
      @scene_object = SceneObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_object_params
      params.require(:scene_object).permit(:kind, :locked, :position_x, :position_y, :position_z, :texture_type, :texture_url, :scale_x, :scale_y, :scale_z, :rotation_x, :rotation_y, :rotation_z, :hidden, :name)
    end
end
