Menus::Application.routes.draw do

    resources :currencies, :dishes, :institutions, :locations, :location_types, 
            :menus, :menu_items, :menu_pages, :menu_sections, :menu_section_instances, 
            :original_menus


    match 'about', :to => 'about#index', :as => "about"
    match 'roadmap', :to => 'about#roadmap', :as => "roadmap"
    match 'reports', :to => 'reports#index', :as => "reports"

    root :to => "menus#index"
  
end
