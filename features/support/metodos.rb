
def abrir_pagina(pagina)
    pagina.load
end

def clica_lupa(pagina)
    pagina.lupa.click
end

def tem_campo_busca?(pagina)
    pagina.has_campo_busca?
end

def pesquisar_por(pagina, palavra)
    clica_lupa(pagina)
    pagina.campo_busca.set palavra
end

def clica(pagina)
    pagina.restaurante.click
end

def verifica_simbolo_real(restaurante)
    lista = restaurante.all('mt-menu > div.col-md-9.col-xs-12 span.menu-item-info-box-price')
    lista.each do |preco| 
        texto = preco.text
        raise 'Não tem R$' unless texto.include?('R$')
    end   
end

def verifica_campos_info(restaurante)
    restaurante.categoria :text => "Categoria"
    restaurante.quem_somos :text => "Quem somos"
    restaurante.horarios :text => "Horários"
end

def verifica_campos_descricao(restaurante)
    raise "Campo não contém descrição" if restaurante.categoria_descr.text == "" ||
    restaurante.quem_somos_descr == '' ||
    restaurante.horarios_descr == ''
end

def tudo_maiuscula?(restaurante)
    lista = restaurante.all('mt-menu > div.col-md-9.col-xs-12 span.menu-item-info-box-text')
    lista.each do |item|
        raise "Não está tudo maiúsculo" unless item.text == item.text.upcase
    end
end