require 'rails_helper'

feature 'gerenciar facebook' do
	
	scenario 'incluir facebook' do
		
		visit new_facebook_path
		preencher_e_verificar_facebook
	end
	scenario 'alterar facebook' do 
		
		facebook = FactoryGirl.create(:facebook)
		visit edit_facebook_path(facebook)
		preencher_e_verificar_facebook

	end

	scenario 'excluir facebook' do
	
		facebook = FactoryGirl.create(:facebook)
		visit facebooks_path
		click_link 'Excluir'

	end
	
	def preencher_e_verificar_facebook
	
		fill_in 'Email',   :with => "teste@teste.com"
		fill_in 'Senha',   :with => "teste"

		click_button 'Salvar'

		expect(page).to have_content 'Email: teste@teste.com'
		expect(page).to have_content 'Senha: teste'

	end
end
