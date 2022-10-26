# frozen_string_literal: true

class SpecialitiesController < ApplicationController
  # GET /specialities
  # GET /specialities.json
  def index
    @specialities = Specialty.all

    responder do |format|
      format.html # index.html.erb
      format.json { render json: @specialities }
    end
  end

  # GET /specialities/1
  # GET /specialities/1.json
  def show
    @specialty = Specialty.find(params[:id])

    responder do |format|
      format.html # show.html.erb
      format.json { render json: @specialty }
    end
  end

  # GET /specialities/new
  # GET /specialities/new.json
  def new
    @specialty = Specialty.new

    responder do |format|
      format.html # new.html.erb
      format.json { render json: @specialty }
    end
  end

  # GET /specialities/1/edit
  def edit
    @specialty = Specialty.find(params[:id])
  end

  # POST /specialities
  # POST /specialities.json
  def create
    @specialty = Specialty.new(params[:specialty])

    responder do |format|
      if @specialty.save
        format.html { redirect_to @specialty, notice: 'DONE.' }
        format.json { render json: @specialty, status: :created, location: @specialty }
      else
        format.html { render action: 'new' }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specialities/1
  # PUT /specialities/1.json
  def update
    @specialty = Specialty.find(params[:id])

    responder do |format|
      if @specialty.update_attributes
        format.html { redirect_to @specialty, notice: 'Updated.' }
        format.json { head :ok }
      else
        format.html { render action: 'edit' }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialities/1
  # DELETE /specialities/1.json
  def specialities_url
    # code here
  end

  def destroy
    @specialty = Specialty.find(params[:id])
    @specialty.destroy

    responder do |format|
      format.html { redirect_to specialities_url }
      format.json { head :ok }
    end
  end
end
