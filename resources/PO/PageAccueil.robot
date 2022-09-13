*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Charger la page
    Go To  ${GOOGLE_URL}

    Wait Until Page Contains  Google

Rechercher un site de logement
    Clear Element Text  name=q

    Input Text  name=q  airbnb

    Mouse Down   xpath=/html/body/div[1]/div[2]/div/img

    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img

    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains  Images

Naviger vers le site AIRBNB
    Scroll Element Into View    xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/a

    Click Link  xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/a

    Wait Until Page Contains  Design

    Sleep  3

    Click Button  xpath=/html/body/div[5]/div/div/div[1]/div/div/div[3]/section/footer/button

Rechercher un logement

    Sleep  3

    Click Button  xpath://*[@id="categoryScroller"]/div/div/div[1]/div/div/div/div[3]/div/div/div/div/button[3]

    Sleep  5