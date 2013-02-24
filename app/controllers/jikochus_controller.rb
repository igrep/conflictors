class JikochusController < ApplicationController
  # GET /jikochus
  # GET /jikochus.json
  def index
    @jikochus = Jikochu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jikochus }
    end
  end

  # GET /jikochus/1
  # GET /jikochus/1.json
  def show
    @jikochu = Jikochu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jikochu }
    end
  end

  # GET /jikochus/new
  # GET /jikochus/new.json
  def new
    @jikochu = Jikochu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jikochu }
    end
  end

  # GET /jikochus/1/edit
  def edit
    @jikochu = Jikochu.find(params[:id])
  end

  # POST /jikochus
  # POST /jikochus.json
  def create
    @jikochu = Jikochu.new(params[:jikochu])

    respond_to do |format|
      if @jikochu.save
        format.html { redirect_to @jikochu, notice: 'Jikochu was successfully created.' }
        format.json { render json: @jikochu, status: :created, location: @jikochu }
      else
        format.html { render action: "new" }
        format.json { render json: @jikochu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jikochus/1
  # PUT /jikochus/1.json
  def update
    @jikochu = Jikochu.find(params[:id])

    respond_to do |format|
      if @jikochu.update_attributes(params[:jikochu])
        format.html { redirect_to @jikochu, notice: 'Jikochu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jikochu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jikochus/1
  # DELETE /jikochus/1.json
  def destroy
    @jikochu = Jikochu.find(params[:id])
    @jikochu.destroy

    respond_to do |format|
      format.html { redirect_to jikochus_url }
      format.json { head :no_content }
    end
  end
end
