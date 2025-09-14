class CategoriaProdutosController < ApplicationController
  before_action :set_categoria_produto, only: %i[ show update destroy ]

  # GET /categoria_produtos
  def index
    @categoria_produtos = CategoriaProduto.all

    render json: @categoria_produtos
  end

  # GET /categoria_produtos/1
  def show
    render json: @categoria_produto
  end

  # POST /categoria_produtos
  def create
    @categoria_produto = CategoriaProduto.new(categoria_produto_params)

    if @categoria_produto.save
      render json: @categoria_produto, status: :created, location: @categoria_produto
    else
      render json: @categoria_produto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categoria_produtos/1
  def update
    if @categoria_produto.update(categoria_produto_params)
      render json: @categoria_produto
    else
      render json: @categoria_produto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categoria_produtos/1
  def destroy
    @categoria_produto.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_produto
      @categoria_produto = CategoriaProduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoria_produto_params
      params.fetch(:categoria_produto, {})
    end
end
