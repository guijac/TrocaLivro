	class UsuariolivrosController < ApplicationController
  # GET /usuariolivros
  # GET /usuariolivros.json
  def index
    @usuariolivros = Usuariolivro.where({id_usuario: params[:id]})
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usuariolivros }
    end
  end

  # GET /usuariolivros/1
  # GET /usuariolivros/1.json
  def show
    @usuariolivro = Usuariolivro.new
	@usuariolivro.user_id = current_user.id
	@usuariolivro.livro_banco_id = params[:id]
	@usuariolivro.save
	respond_to do |format|
      format.html { redirect_to usuariolivros_url }
    end
  end

  # GET /usuariolivros/new
  # GET /usuariolivros/new.json
  def new
    @livros = LivroBanco.all
	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usuariolivro }
    end
  end

  # GET /usuariolivros/1/edit
  def edit
    @usuariolivro = Usuariolivro.find(params[:id])
  end

  # POST /usuariolivros
  # POST /usuariolivros.json
  def create
    @usuariolivro = Usuariolivro.new(params[:usuariolivro])

    respond_to do |format|
      if @usuariolivro.save
        format.html { redirect_to @usuariolivro, notice: 'Livro adicionado na sua lista com sucesso.' }
        format.json { render json: @usuariolivro, status: :created, location: @usuariolivro }
      else
        format.html { render action: "new" }
        format.json { render json: @usuariolivro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usuariolivros/1
  # PUT /usuariolivros/1.json
  def update
  end

  # DELETE /usuariolivros/1
  # DELETE /usuariolivros/1.json
  def destroy
    @livro = Usuariolivro.where({livro_banco_id: params[:id] , user_id: current_user.id})
    @livro[0].destroy

    respond_to do |format|
      format.html { redirect_to usuariolivros_url }
      format.json { head :no_content }
    end
  end
end
