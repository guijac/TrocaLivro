class LivroBancosController < ApplicationController
  # GET /livro_bancos
  # GET /livro_bancos.json
  def index
	if !Usuariolivro.all.collect(&:livro_banco_id).empty?
		@livro_bancos = LivroBanco.find([Usuariolivro.all.collect(&:livro_banco_id)])
	else
		@livro_bancos = nil
	end	
 	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livro_bancos }
    end
  end

  # GET /livro_bancos/1
  # GET /livro_bancos/1.json
  def show
    @livro_banco = LivroBanco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livro_banco }
    end
  end

  # GET /livro_bancos/new
  # GET /livro_bancos/new.json
  def new
    @livro_banco = LivroBanco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livro_banco }
    end
  end

  # GET /livro_bancos/1/edit
  def edit
    @livro_banco = LivroBanco.find(params[:id])
  end

  # POST /livro_bancos
  # POST /livro_bancos.json
  def create
    @livro_banco = LivroBanco.new(params[:livro_banco])

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

  # PUT /livro_bancos/1
  # PUT /livro_bancos/1.json
  def update
    @livro_banco = LivroBanco.find(params[:id])

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

  # DELETE /livro_bancos/1
  # DELETE /livro_bancos/1.json
  def destroy
    @livro_banco = LivroBanco.find(params[:id])
    @livro_banco.destroy

    respond_to do |format|
      format.html { redirect_to livro_bancos_url }
      format.json { head :no_content }
    end
  end
end
