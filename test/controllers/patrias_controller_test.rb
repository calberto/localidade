require 'test_helper'

class PatriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patria = patrias(:one)
  end

  test "should get index" do
    get patrias_url
    assert_response :success
  end

  test "should get new" do
    get new_patria_url
    assert_response :success
  end

  test "should create patria" do
    assert_difference('Patria.count') do
      post patrias_url, params: { patria: { nome: @patria.nome, sigla: @patria.sigla } }
    end

    assert_redirected_to patria_url(Patria.last)
  end

  test "should show patria" do
    get patria_url(@patria)
    assert_response :success
  end

  test "should get edit" do
    get edit_patria_url(@patria)
    assert_response :success
  end

  test "should update patria" do
    patch patria_url(@patria), params: { patria: { nome: @patria.nome, sigla: @patria.sigla } }
    assert_redirected_to patria_url(@patria)
  end

  test "should destroy patria" do
    assert_difference('Patria.count', -1) do
      delete patria_url(@patria)
    end

    assert_redirected_to patrias_url
  end
end
