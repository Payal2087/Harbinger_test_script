*** Variables ***
${URL}            https://weather.com
${BROWSER}        Chrome
${Search_City}    //fieldset/input[@role="combobox"]
${More_Forecast}    //button[@data-testid="ctaButton"]/span[text()="More Forecasts"]
${More_Forcast_cold_Flu}    //nav/div/a/span[text()="Cold & Flu"]
${More_Forcast_selection}    //nav/div/a/span[text()='${More_Forcast}']
${Forcast_Type}    Cold & Flu
${Influenza_Type}    //section/div[2]/div[1]/div/div[2]/h2[text()='${Type}']
${Type}           Influenza Type A
${Percentage}     //section/div[2]/div[1]/div/div[2]/h2[text()='${Type}']/../../div
