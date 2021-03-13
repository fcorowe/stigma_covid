# Data

## Twitter 

The Twitter data set is released in compliance with the Twitter's Terms and Conditions, under which we are unable to publicly release the text of the collected tweets. We are, therefore, releasing the tweet IDs, which are unique identifiers tied to specific tweets. The tweet IDs can be used to query Twitter’s API and obtain the complete Tweet object, including tweet content (text, URLs, hashtags, etc.) and authors’ metadata. This process to retrieve the full Tweet object from Twitter starting from a tweet ID is referred to as hydration. You can also use Twitter’s API to retrieve the data using our code provided [here](../methods/01_collecting_and_processing_twitter_data/collecting_and_processing_twitter_data.ipynb). Alternatively, there are several easy to use tools that have been developed for such purposes, including the [Hydrator](https://github.com/DocNow/hydrator) and [Twarc](https://github.com/DocNow/twarc).  

### Data source

We used the Twitter Premium API to download all tweets containing migration related key words, accounts and hashtags. Please refer to the paper for details on the data set, including dates, search terms and geographic information used for the data collection.

## COVID-19 data

Two data sets are included for the COVID-19 cases analysis reported in Figure 1 in the paper.

* `owid-covid-data.csv`: COVID-19 cases extracted from [Our World in Data](https://ourworldindata.org).

* `date_ctry_fcase.csv`: Data of first confirmed case in each country scrapped from [Wikipedia](https://en.wikipedia.org/wiki/COVID-19_pandemic_by_country_and_territory). The code to scrap the data is [here](../methods/06_webscrapping/scrapping_dates_wkpdia.R)