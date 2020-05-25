Dado("que {string} é um novo usuario") do |usuario_code|
  @usuario_page.go
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/usuario.yaml"))
  @usuario = file[usuario_code]
  
end
Quando("eu faço o cadastro deste usuário") do
  @usuario_page.create(@usuario)
end
Então("sistema deve cadastrar com sucesso") do
 
end
