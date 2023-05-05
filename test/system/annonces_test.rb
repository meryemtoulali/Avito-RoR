require "application_system_test_case"

class AnnoncesTest < ApplicationSystemTestCase
  setup do
    @annonce = annonces(:one)
  end

  test "visiting the index" do
    visit annonces_url
    assert_selector "h1", text: "Annonces"
  end

  test "creating a Annonce" do
    visit annonces_url
    click_on "New Annonce"

    fill_in "Date", with: @annonce.date
    fill_in "Description", with: @annonce.description
    fill_in "Images", with: @annonce.images
    fill_in "Prix", with: @annonce.prix
    fill_in "Secteur", with: @annonce.secteur
    fill_in "Titre", with: @annonce.titre
    fill_in "Type", with: @annonce.type
    fill_in "Ville", with: @annonce.ville
    click_on "Create Annonce"

    assert_text "Annonce was successfully created"
    click_on "Back"
  end

  test "updating a Annonce" do
    visit annonces_url
    click_on "Edit", match: :first

    fill_in "Date", with: @annonce.date
    fill_in "Description", with: @annonce.description
    fill_in "Images", with: @annonce.images
    fill_in "Prix", with: @annonce.prix
    fill_in "Secteur", with: @annonce.secteur
    fill_in "Titre", with: @annonce.titre
    fill_in "Type", with: @annonce.type
    fill_in "Ville", with: @annonce.ville
    click_on "Update Annonce"

    assert_text "Annonce was successfully updated"
    click_on "Back"
  end

  test "destroying a Annonce" do
    visit annonces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annonce was successfully destroyed"
  end
end
