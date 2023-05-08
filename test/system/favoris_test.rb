require "application_system_test_case"

class FavorisTest < ApplicationSystemTestCase
  setup do
    @favori = favoris(:one)
  end

  test "visiting the index" do
    visit favoris_url
    assert_selector "h1", text: "Favoris"
  end

  test "creating a Favori" do
    visit favoris_url
    click_on "New Favori"

    fill_in "Annone", with: @favori.annone_id
    fill_in "Utilisateur", with: @favori.utilisateur_id
    click_on "Create Favori"

    assert_text "Favori was successfully created"
    click_on "Back"
  end

  test "updating a Favori" do
    visit favoris_url
    click_on "Edit", match: :first

    fill_in "Annone", with: @favori.annone_id
    fill_in "Utilisateur", with: @favori.utilisateur_id
    click_on "Update Favori"

    assert_text "Favori was successfully updated"
    click_on "Back"
  end

  test "destroying a Favori" do
    visit favoris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favori was successfully destroyed"
  end
end
