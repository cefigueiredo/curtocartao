class CustosController < ApplicationController
  # GET /custos
  # GET /custos.json
  def index
		@custos = Custo.order('ordem')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custos }
    end
  end

  # GET /custos/1
  # GET /custos/1.json
  def show
    @custo = Custo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custo }
    end
  end

  # GET /custos/new
  # GET /custos/new.json
  def new
    @custo = Custo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @custo }
    end
  end

  # GET /custos/1/edit
  def edit
    @custo = Custo.find(params[:id])
  end

  # POST /custos
  # POST /custos.json
  def create
    @custo = Custo.new(params[:custo])

    respond_to do |format|
      if @custo.save
        format.html { redirect_to @custo, notice: 'Custo was successfully created.' }
        format.json { render json: @custo, status: :created, location: @custo }
      else
        format.html { render action: "new" }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custos/1
  # PUT /custos/1.json
  def update
    @custo = Custo.find(params[:id])

    respond_to do |format|
      if @custo.update_attributes(params[:custo])
        format.html { redirect_to @custo, notice: 'Custo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custos/1
  # DELETE /custos/1.json
  def destroy
    @custo = Custo.find(params[:id])
    @custo.destroy

    respond_to do |format|
      format.html { redirect_to custos_url }
      format.json { head :ok }
    end
  end
end
