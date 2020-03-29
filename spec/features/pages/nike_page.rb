module Pages
  class NikePage < SitePrism::Page
    set_url '/Nike_(mythology)'

    element :family_tree_link, "ul li.toclevel-1.tocsection-7 a"
  end
end
