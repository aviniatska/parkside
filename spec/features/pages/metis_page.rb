module Pages
  class MetisPage < SitePrism::Page
    set_url '/Metis_(mythology)'

    %w[family mythology references see_also further_reading].each_with_index do |name, index|
      element "#{name}_link", "ul li.toclevel-1.tocsection-#{index+1} a"
      element "#{name}_heading", "##{name.capitalize}"
    end
    element :nike_link, '.vertical-navbox.nowraplinks tbody tr:nth-child(6) td ul li:nth-child(13) a'
    element :nike_pop_up, '.mwe-popups.mwe-popups-type-page'
  end
end
