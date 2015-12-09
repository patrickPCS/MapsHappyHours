require 'rails_helper'

feature 'gerencia cadastro' do 

	scenario 'incluir usuario' do # , :js => true do
		visit new_comercio_path
		preencher_e_verficar_comercio
	end

	scenario 'alterar cadastro' do # , :js => true do
		cadastro = FactoryGirl.create(:comercio)
		visit edit_comercio_path(cadastro)
		preencher_e_verficar_comercio
	end

	scenario 'excluir cadastro' do #, :javascript => true do
		cadastro = FactoryGirl.create(:comercio)
		visit  comercios_path
		click_link 'Excluir'
	end

	def preencher_e_verficar_comercio
		fill_in 'Nome',    	:with => "Patrick"
		fill_in 'Endereço',	:with => "rua zero"
		fill_in 'Tipo',	:with => "Bar"
		fill_in 'Telefone',		:with => "222222222"
		
		click_button 'Salvar'

		expect(page).to have_content 'Nome: Patrick'
		expect(page).to have_content 'Endereço: rua zero'
		expect(page).to have_content 'Tipo: Bar'
		expect(page).to have_content 'Telefone: 222222222'
	end
end