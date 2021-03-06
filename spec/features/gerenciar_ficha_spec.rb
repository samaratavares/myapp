# coding: utf-8
require 'rails_helper'
feature 'gerenciar Ficha' do
scenario 'incluir Ficha' do # , :js => true do
visit new_ficha_path
preencher_e_verificar_ficha
end
scenario 'alterar ficha' do #, :js => true do
ficha = FactoryGirl.create(:ficha)
visit edit_ficha_path(ficha)
preencher_e_verificar_ficha
end
scenario 'excluir ficha' do #, :javascript => true do
ficha = FactoryGirl.create(:ficha)
visit fichas_path
click_link 'Excluir'
end
def preencher_e_verificar_ficha
fill_in 'Altura', :with => "2m"
fill_in 'Imc', :with => "1.2"
fill_in 'Classificacao', :with => "peso"
fill_in 'Riscos', :with => "nenhum"
fill_in 'Circunferencia:', :with => "70"
fill_in 'Pressao:', :with => "12/8"
fill_in 'Glicose:', :with => "normal"
fill_in 'Batimentos:', :with => "80"
fill_in 'Dieta:', :with => "regular"
fill_in 'Medicamentos:', :with => "ibuprofemo"
click_button 'Salvar'

expect(page).to have_content 'Altura: 2m'
expect(page).to have_content 'Imc: 1.2'
expect(page).to have_content 'Classificacao: peso'
expect(page).to have_content 'Riscos: nenhum'
expect(page).to have_content 'Circunferencia: 70'
expect(page).to have_content 'Pressao: 12/8'
expect(page).to have_content 'Glicose: normal'
expect(page).to have_content 'Batimentos: 80'
expect(page).to have_content 'Dieta: regular'
expect(page).to have_content 'Medicamentos: ibuprofemo'

end 
end
