# coding: utf-8
require 'rails_helper'
feature 'gerenciar Medico' do
scenario 'incluir Medico' do # , :js => true do
visit new_medico_path
preencher_e_verificar_medico
end
scenario 'alterar medico' do #, :js => true do
medico = FactoryGirl.create(:medico)
visit edit_medico_path(medico)
preencher_e_verificar_medico
end
scenario 'excluir medico' do #, :javascript => true do
medico = FactoryGirl.create(:medico)
visit medicos_path
click_link 'Excluir'
end
def preencher_e_verificar_medico
fill_in 'Nome', :with => "Luis"
fill_in 'Endereco', :with => "Rua XXX"
fill_in 'Telefone', :with => "199999"
fill_in 'Email', :with => "luiz@luiz.com"
fill_in 'Crm:', :with => "aaaa"
click_button 'Salvar'

expect(page).to have_content 'Nome: Luis'
expect(page).to have_content 'Endereco: Rua XXX'
expect(page).to have_content 'Telefone: 199999'
expect(page).to have_content 'Email: luiz@luiz.com'
expect(page).to have_content 'Crm: aaaa'

end 
end
