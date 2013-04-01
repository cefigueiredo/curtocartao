class MovimentacoesController < ApplicationController
  # GET /movimentacoes
  # GET /movimentacoes.json
  def index
    @movimentacoes = Movimentacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movimentacoes }
    end
  end

  # GET /movimentacoes/1
  # GET /movimentacoes/1.json
  def show
    @movimentacao = Movimentacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movimentacao }
    end
  end

  # GET /movimentacoes/new
  # GET /movimentacoes/new.json
  def new
    @movimentacao = Movimentacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movimentacao }
    end
  end

  # GET /movimentacoes/1/edit
  def edit
    @movimentacao = Movimentacao.find(params[:id])
  end

  # POST /movimentacoes
  # POST /movimentacoes.json
  def create
    @movimentacao = Movimentacao.new(params[:movimentacao])

    respond_to do |format|
      if @movimentacao.save
        format.html { redirect_to @movimentacao, notice: 'Movimentacao was successfully created.' }
        format.json { render json: @movimentacao, status: :created, location: @movimentacao }
      else
        format.html { render action: "new" }
        format.json { render json: @movimentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movimentacoes/1
  # PUT /movimentacoes/1.json
  def update
    @movimentacao = Movimentacao.find(params[:id])

    respond_to do |format|
      if @movimentacao.update_attributes(params[:movimentacao])
        format.html { redirect_to @movimentacao, notice: 'Movimentacao was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @movimentacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentacoes/1
  # DELETE /movimentacoes/1.json
  def destroy
    @movimentacao = Movimentacao.find(params[:id])
    @movimentacao.destroy

    respond_to do |format|
      format.html { redirect_to movimentacoes_url }
      format.json { head :ok }
    end
  end
end
