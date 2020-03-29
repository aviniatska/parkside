# frozen_string_literal: true
require 'spec_helper'

feature 'Wikipedia page', type: :feature do
  let(:metis_page) { Pages::App.new.metis_page }
  let(:nike_page) { Pages::App.new.nike_page }

  scenario 'The headings listed in the `Contents` box are used as headings on the page
            The headings  have functioning hyperlinks
           `Nike` has a popup that contains the text
            Clicking on `Nike`, takes user to a page that displays a family tree' do
    metis_page.load

    expect(metis_page.title).to have_content('Metis (mythology) - Wikipedia')
    expect(metis_page).to have_content('Metis (mythology)')

    %w[family mythology references see_also further_reading].each do |name|
      expect(metis_page.send("#{name}_link")).to have_content metis_page.send("#{name}_heading").text

      metis_page.send("#{name}_link").click
      expect(metis_page.current_url).to eq "https://en.wikipedia.org/wiki/Metis_(mythology)##{name.capitalize}"
    end

    metis_page.nike_link.hover
    expect(metis_page.nike_pop_up.text).to eq("In ancient Greek civilization, Nike was a goddess who personified victory. Her Roman equivalent was Victoria.")

    metis_page.nike_link.click
    expect(nike_page.family_tree_link.visible?).to be_truthy
    expect(nike_page.current_url).to eq 'https://en.wikipedia.org/wiki/Nike_(mythology)'
  end
end
