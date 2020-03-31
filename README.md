# Parkside test assignment

## Problem
Starting with Wikipedia's [page](https://en.wikipedia.org/wiki/Metis_(mythology)), please test for the following:

* the headings listed in the `Contents` box are used as headings on the page

* the headings listed in the `Contents` box have functioning hyperlinks

* in the _Personified concepts_, `Nike` has a popup that contains the following text: _In ancient Greek religion, Nike was a goddess who personified victory. Her Roman equivalent was Victoria_

* in the _Personified concepts_, if you click on `Nike`, it takes you to a page that displays a family tree

## Solution

* create basic Rails app

* setup test env (`Gemfile, group: test`)
  * capybara
  * selenium-webdriver
  * webdrivers
  * site_prism
  * rspec

* webdriver `chromedriver`

* test infrastructure located in `spec` directory

* path to test file `spec/features/wikipedia_page_spec.rb`

* run test `rspec spec/features/wikipedia_page_spec.rb`
