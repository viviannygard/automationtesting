
class UsuarioPage
  include Capybara::DSL

  def go
    visit "/Register.html"
  end
  
  def create(usuario)

    find(:xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[1]/input').set usuario['fist_name']
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[2]/input').set usuario['last_name']
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[2]/div/textarea').set usuario['addres']
    find(:xpath, '//*[@id="eid"]/input').set usuario['email_adress']
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[4]/div/input').set usuario['phone']
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input').click
    find(:xpath, '//*[@id="checkbox1"]').click
    find(:xpath, '//*[@id="msdd"]').click
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[7]/div/multi-select/div[2]/ul/li[29]/a').click
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[4]/div/input').click
    find('#Skills').click
    find('#Skills', text: usuario['skills']).click  
    find('#countries').click
    find('#countries', text: usuario['Country']).click
    find('#yearbox', text: usuario['year']).click
    find(:xpath, '//*[@id="basicBootstrapForm"]/div[11]/div[2]/select', text: usuario['month']).click
    find('#daybox', text: usuario['day']).click
    
    
    find(:xpath, '//*[@id="firstpassword"]').set usuario['password']
    find(:xpath, '//*[@id="secondpassword"] ').set usuario['confirm_password']

    sleep 8 
    find('#submitbtn').click
    
 end 
end