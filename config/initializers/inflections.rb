# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:'pt-BR') do |inflect|
  inflect.irregular "categoria_produto", "categorias_produtos"
  # você pode adicionar mais palavras aqui se precisar
end
