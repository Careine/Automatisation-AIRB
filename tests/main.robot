*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot
Resource  ../resources/PO/PageAccueil.robot


Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test
*** Test Cases ***
Voir les locations disponibles
    PageAccueil.Charger la page
    PageAccueil.Rechercher un site de logement
    PageAccueil.Naviger vers le site AIRBNB
    PageAccueil.Rechercher un logement