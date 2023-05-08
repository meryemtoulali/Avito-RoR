require "application_system_test_case"

class CommandesTest < ApplicationSystemTestCase
  setup do
    @commande = commandes(:one)
  end

  test "visiting the index" do
    visit commandes_url
    assert_selector "h1", text: "Commandes"
  end

  test "creating a Commande" do
    visit commandes_url
    click_on "New Commande"

    fill_in "Adresse", with: @commande.adresse
    fill_in "Annonce", with: @commande.annonce_id
    fill_in "Email", with: @commande.email
    fill_in "Methode paiement", with: @commande.methode_paiement
    fill_in "Nom", with: @commande.nom
    fill_in "Prix", with: @commande.prix
    fill_in "Telephone", with: @commande.telephone
    fill_in "Utilisateur", with: @commande.utilisateur_id
    click_on "Create Commande"

    assert_text "Commande was successfully created"
    click_on "Back"
  end

  test "updating a Commande" do
    visit commandes_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @commande.adresse
    fill_in "Annonce", with: @commande.annonce_id
    fill_in "Email", with: @commande.email
    fill_in "Methode paiement", with: @commande.methode_paiement
    fill_in "Nom", with: @commande.nom
    fill_in "Prix", with: @commande.prix
    fill_in "Telephone", with: @commande.telephone
    fill_in "Utilisateur", with: @commande.utilisateur_id
    click_on "Update Commande"

    assert_text "Commande was successfully updated"
    click_on "Back"
  end

  test "destroying a Commande" do
    visit commandes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commande was successfully destroyed"
  end
end
