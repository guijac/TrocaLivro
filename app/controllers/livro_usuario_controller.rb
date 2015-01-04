class LivroUsuarioController < ApplicationController

  # GET /livro_usuarios
  # GET /livro_usuarios.json
  def index
  
    @livro_usuarios = LivroUsuario.all
	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livro_usuarios }
    end
  end

  # GET /livro_usuarios/1
  # GET /livro_usuarios/1.json
  def show
    @livro_banco = LivroUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livro_banco }
    end
  end

  # GET /livro_usuarios/new
  # GET /livro_usuarios/new.json
  def new
    @livro_banco = LivroUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livro_banco }
    end
  end

  # GET /livro_usuarios/1/edit
  def edit
    @livro_banco = LivroUsuario.find(params[:id])
  end

  # POST /livro_usuarios
  # POST /livro_usuarios.json
  def create
    @livro_banco = LivroUsuario.new(params[:livro_banco])

    respond_to do |format|
      if @livro_banco.save
        format.html { redirect_to @livro_banco, notice: 'Livro criado com sucesso.' }
        format.json { render json: @livro_banco, status: :created, location: @livro_banco }
      else
        format.html { render action: "new" }
        format.json { render json: @livro_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /livro_usuarios/1
  # PUT /livro_usuarios/1.json
  def update
    @livro_banco = LivroUsuario.find(params[:id])

    respond_to do |format|
      if @livro_banco.update_attributes(params[:livro_banco])
        format.html { redirect_to @livro_banco, notice: 'Livro editado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @livro_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livro_usuarios/1
  # DELETE /livro_usuarios/1.json
  def destroy
    @livro_banco = LivroUsuario.find(params[:id])
    @livro_banco.destroy

    respond_to do |format|
      format.html { redirect_to livro_usuarios_url }
      format.json { head :no_content }
    end
  end
  
end
