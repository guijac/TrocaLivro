class TrocasController < ApplicationController
  # GET /trocas
  # GET /trocas.json
  def index
    @trocas = Troca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trocas }
    end
  end

  # GET /trocas/1
  # GET /trocas/1.json
  def show
    @troca = Troca.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @troca }
    end
  end

  # GET /trocas/new
  # GET /trocas/new.json
  def new
    @troca = Troca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @troca }
    end
  end

  # GET /trocas/1/edit
  def edit
    @troca = Troca.find(params[:id])
	@troca.status = "1"
	@troca.save
	render action: "show"
  end

  # POST /trocas
  # POST /trocas.json
  def create
	@troca = Troca.new(params[:troca])
	idUsuario = Usuariolivro.where({livro_banco_id: @troca.livroSolicitado_id})[0].user_id
	@troca.usuarioSolicitante_id = current_user.id
	@troca.usuarioSolicitado_id = idUsuario
	@troca.status = "0"
	respond_to do |format|
      if @troca.save
        format.html { redirect_to @troca, notice: 'Solicitação de troca foi criada com sucesso.' }
        format.json { render json: @troca, status: :created, location: @troca }
      else
        format.html { render action: "new" }
        format.json { render json: @troca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trocas/1
  # PUT /trocas/1.json
  def update
    @trocas = Troca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trocas }
    end
  end

  # DELETE /trocas/1
  # DELETE /trocas/1.json
  def destroy
    @troca = Troca.find(params[:id])
    @troca.destroy

    respond_to do |format|
      format.html { redirect_to trocas_url }
      format.json { head :no_content }
    end
  end
end
