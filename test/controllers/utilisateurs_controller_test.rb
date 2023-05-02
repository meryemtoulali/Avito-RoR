require "test_helper"

class UtilisateursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get utilisateurs_new_url
    assert_response :success
  end

  def setup #in order to do tests, we need a test user
    @utilisateur = Utilisateur.new(nom: "Nom1",email: "email@email.com",password: "password",password_confirmation: "password")
  end

  test "nom doit etre present" do
    @utilisateur.nom =""
    assert_not @utilisateur.valid?
  end

  test "email doit etre present" do
    @utilisateur.email =""
    assert_not @utilisateur.valid?
  end

  test "nom ne doit pas etre trop long" do
    @utilisateur.nom = "a" * 51
    assert_not @utilisateur.valid?
  end

  test "email ne doit pas etre trop long" do
    @utilisateur.email = "a" * 244 + "@example.com"
    assert_not @utilisateur.valid?
  end

end
