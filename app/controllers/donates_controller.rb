class DonatesController < ApplicationController
  # GET /donates
  # GET /donates.json
  def index
    @donates = Donate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donates }
    end
  end

  # GET /donates/1
  # GET /donates/1.json
  def show
    @donate = Donate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donate }
    end
  end

  # GET /donates/new
  # GET /donates/new.json
  def new
    @donate = Donate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donate }
    end
  end

  # GET /donates/1/edit
  def edit
    @donate = Donate.find(params[:id])
  end

  # POST /donates
  # POST /donates.json
  def create
    @donate = Donate.new(params[:donate])

    respond_to do |format|
      if @donate.save
        format.html { redirect_to @donate, notice: 'Donate was successfully created.' }
        format.json { render json: @donate, status: :created, location: @donate }
      else
        format.html { render action: "new" }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /donates/1
  # PUT /donates/1.json
  def update
    @donate = Donate.find(params[:id])

    respond_to do |format|
      if @donate.update_attributes(params[:donate])
        format.html { redirect_to @donate, notice: 'Donate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donates/1
  # DELETE /donates/1.json
  def destroy
    @donate = Donate.find(params[:id])
    @donate.destroy

    respond_to do |format|
      format.html { redirect_to donates_url }
      format.json { head :no_content }
    end
  end
end
