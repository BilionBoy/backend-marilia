require "test_helper"

class CategoriaProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoria_produto = categoria_produtos(:one)
  end

  test "should get index" do
    get categoria_produtos_url, as: :json
    assert_response :success
  end

  test "should create categoria_produto" do
    assert_difference("CategoriaProduto.count") do
      post categoria_produtos_url, params: { categoria_produto: {} }, as: :json
    end

    assert_response :created
  end

  test "should show categoria_produto" do
    get categoria_produto_url(@categoria_produto), as: :json
    assert_response :success
  end

  test "should update categoria_produto" do
    patch categoria_produto_url(@categoria_produto), params: { categoria_produto: {} }, as: :json
    assert_response :success
  end

  test "should destroy categoria_produto" do
    assert_difference("CategoriaProduto.count", -1) do
      delete categoria_produto_url(@categoria_produto), as: :json
    end

    assert_response :no_content
  end
end
