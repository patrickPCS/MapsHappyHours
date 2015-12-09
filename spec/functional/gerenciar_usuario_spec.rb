require 'rails_helper'

feature 'gerencia cadastro' do 

	scenario 'incluir usuario' do # , :js => true do
		visit new_usuario_path
		preencher_e_verficar_usuario
	end

	scenario 'alterar cadastro' do # , :js => true do
		usuario = FactoryGirl.create(:usuario)
		visit edit_usuario_path(usuario)
		preencher_e_verficar_usuario
	end

	scenario 'excluir cadastro' do #, :javascript => true do
		usuario = FactoryGirl.create(:usuario)
		visit  usuarios_path
		click_link 'Excluir'
	end

	def preencher_e_verficar_usuario
		fill_in 'Nome',    	:with => "Patrick"
		fill_in 'Email',	:with => "teste@teste.com"
		fill_in 'Data Nascimento',	:with => "2015-12-07"
		fill_in 'Senha',		:with => "teste"
		fill_in 'Confirme Senha',	:with => "teste"

		click_button 'Salvar'

		expect(page).to have_content 'Nome: Patrick'
		expect(page).to have_content 'Email: teste@teste.com'
		expect(page).to have_content 'Data Nascimento: 2015-12-07'
		expect(page).to have_content 'Senha: teste'
		expect(page).to have_content 'Confirme Senha: teste'
	end
end