require 'rails_helper'

feature 'gerencia localizacao' do 

	scenario 'incluir localizacao ' do # , :js => true do
		visit new_localizacao_path
		preencher_e_verficar_localizacao
	end

	scenario 'alterar localizacao' do # , :js => true do
		localizacao = FactoryGirl.create(:localizacao)
		visit edit_localizacao_path(localizacao)
		preencher_e_verficar_localizacao
	end

	scenario 'excluir localizacao' do #, :javascript => true do
		localizacao = FactoryGirl.create(:localizacao)
		visit  localizacaos_path
		click_link 'Excluir'
	end

	def preencher_e_verficar_localizacao
		fill_in 'Latitude',    	:with => "-21.80899426"
		fill_in 'Longitude',	:with => "-41.38983786"
		fill_in 'Elevação',	    :with => "8"
		
		click_button 'Salvar'

		expect(page).to have_content 'Latitude: -21.80899426'
		expect(page).to have_content 'Longitude: -41.38983786'
		expect(page).to have_content 'Elevação:  8'
	end
end