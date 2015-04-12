# coding: utf-8
require 'rails_helper'
feature 'gerenciar Paciente' do
scenario 'incluir Paciente' do # , :js => true do
visit new_paciente_path
preencher_e_verificar_paciente
end
scenario 'alterar Paciente' do #, :js => true do
paciente = FactoryGirl.create(:paciente)
visit edit_paciente_path(paciente)
preencher_e_verificar_paciente
end
scenario 'excluir paciente' do #, :javascript => true do
paciente = FactoryGirl.create(:paciente)
visit pacientes_path
click_link 'Excluir'
end
def preencher_e_verificar_paciente
fill_in 'Nome', :with => "Luiz"
fill_in 'Endereco', :with => "Rua XXX"
fill_in 'Telefone', :with => "99999"
fill_in 'Email', :with => "luiz@luiz.com"
fill_in 'Cpf:', :with => "999887665"
click_button 'Salvar'

expect(page).to have_content 'Nome: Luiz'
expect(page).to have_content 'Endereco: Rua XXX'
expect(page).to have_content 'Telefone: 99999'
expect(page).to have_content 'Email: luiz@luiz.com'
expect(page).to have_content 'Cpf: 999887665'

end 
end
