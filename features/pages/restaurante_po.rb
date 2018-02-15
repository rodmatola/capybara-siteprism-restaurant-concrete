
class RestaurantMenu < SitePrism::Page
    set_url "http://localhost:4200/restaurants"
    
    element :lupa, "body > mt-app > div > div > div > mt-restaurants > section.content-header > h1 > a > i"
    element :campo_busca, "body > mt-app > div > div > div > mt-restaurants > section.content-header > div > div > form > div > input"
    element :restaurante, "body > mt-app > div > div > div > mt-restaurants > section.content > div > div > mt-restaurant > a > div"
end

class RestaurantPage < SitePrism::Page
    set_url "http://localhost:4200/restaurants{/restaurante}"

    element :categoria, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dt:nth-child(1)"
    element :categoria_descr, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dd:nth-child(2)"
    
    element :quem_somos, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dt:nth-child(3)"
    element :quem_somos_descr, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dd:nth-child(4)"

    element :horarios, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dt:nth-child(5)"
    element :horarios_descr, "body > mt-app > div > div > div > mt-restaurant-detail > section.content > div:nth-child(1) > div > div > div.box-body > dl > dd:nth-child(6)"
end
    