class MtbExpantionsController < ApplicationController
  # GET /mtb_expantions
  # GET /mtb_expantions.json
  def index
    @mtb_expantions = MtbExpantion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtb_expantions }
    end
  end

  # GET /mtb_expantions/1
  # GET /mtb_expantions/1.json
  def show
    @mtb_expantion = MtbExpantion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtb_expantion }
    end
  end

  # GET /mtb_expantions/new
  # GET /mtb_expantions/new.json
  def new
    @mtb_expantion = MtbExpantion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtb_expantion }
    end
  end

  # GET /mtb_expantions/1/edit
  def edit
    @mtb_expantion = MtbExpantion.find(params[:id])
  end

  # POST /mtb_expantions
  # POST /mtb_expantions.json
  def create
    @mtb_expantion = MtbExpantion.new(params[:mtb_expantion])

    respond_to do |format|
      if @mtb_expantion.save
        format.html { redirect_to @mtb_expantion, notice: 'Mtb expantion was successfully created.' }
        format.json { render json: @mtb_expantion, status: :created, location: @mtb_expantion }
      else
        format.html { render action: "new" }
        format.json { render json: @mtb_expantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtb_expantions/1
  # PUT /mtb_expantions/1.json
  def update
    @mtb_expantion = MtbExpantion.find(params[:id])

    respond_to do |format|
      if @mtb_expantion.update_attributes(params[:mtb_expantion])
        format.html { redirect_to @mtb_expantion, notice: 'Mtb expantion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtb_expantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtb_expantions/1
  # DELETE /mtb_expantions/1.json
  def destroy
    @mtb_expantion = MtbExpantion.find(params[:id])
    @mtb_expantion.destroy

    respond_to do |format|
      format.html { redirect_to mtb_expantions_url }
      format.json { head :no_content }
    end
  end
end
