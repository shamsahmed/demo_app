class MiscropostsController < ApplicationController
  # GET /miscroposts
  # GET /miscroposts.json
  def index
    @miscroposts = Miscropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miscroposts }
    end
  end

  # GET /miscroposts/1
  # GET /miscroposts/1.json
  def show
    @miscropost = Miscropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @miscropost }
    end
  end

  # GET /miscroposts/new
  # GET /miscroposts/new.json
  def new
    @miscropost = Miscropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @miscropost }
    end
  end

  # GET /miscroposts/1/edit
  def edit
    @miscropost = Miscropost.find(params[:id])
  end

  # POST /miscroposts
  # POST /miscroposts.json
  def create
    @miscropost = Miscropost.new(params[:miscropost])

    respond_to do |format|
      if @miscropost.save
        format.html { redirect_to @miscropost, notice: 'Miscropost was successfully created.' }
        format.json { render json: @miscropost, status: :created, location: @miscropost }
      else
        format.html { render action: "new" }
        format.json { render json: @miscropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miscroposts/1
  # PUT /miscroposts/1.json
  def update
    @miscropost = Miscropost.find(params[:id])

    respond_to do |format|
      if @miscropost.update_attributes(params[:miscropost])
        format.html { redirect_to @miscropost, notice: 'Miscropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @miscropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscroposts/1
  # DELETE /miscroposts/1.json
  def destroy
    @miscropost = Miscropost.find(params[:id])
    @miscropost.destroy

    respond_to do |format|
      format.html { redirect_to miscroposts_url }
      format.json { head :no_content }
    end
  end
end
