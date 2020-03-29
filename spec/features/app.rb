require_relative 'pages/metis_page'
require_relative 'pages/nike_page'

module Pages
  class App
    def metis_page
      @metis_page ||= MetisPage.new
    end

    def nike_page
      @nike_page ||= NikePage.new
    end
  end
end
