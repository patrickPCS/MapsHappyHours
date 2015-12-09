require 'spec_helper'
require 'rails_helper'

feature 'gerenciar avaliacao' do

  before(:each) do
    @comercio = create(:comercio, nome: "teste")
  end


  let(:dados) do {

    alimentacao: 3.5,
    atendimento: 2.5,
    ambiente: 4.5,
    comercio: "teste"
   }
  end

  scenario 'incluir avaliacao' do #, :js => true  do
    visit new_avaliacao_path
    preencher(dados)
    click_button 'Salvar'
    #save_and_open_page
    verificar(dados)

  end

  scenario 'alterar avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, comercio: @nome )

    visit edit_avaliacao_path(avaliacao)
    preencher(dados)
    #save_and_open_page
    click_button 'Salvar'
    #save_and_open_page
    verificar(dados)


  end


  scenario 'excluir avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao, comercio: @nome)
    visit avaliacaos_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Alimentação',  with: dados[:alimentacao]
    fill_in 'Atendimento',  with: dados[:atendimento]
    fill_in 'Ambiente', with: dados[:ambiente]
    select dados[:nome], from: "Comercio"

  end
 
  def verificar(dados)

    page.should have_content "Alimentação: #{dados[:alimentacao]}"
    page.should have_content "Atendimento: #{dados[:atendimento]}"
    page.should have_content "Ambiente: #{dados[:ambiente]}"
    page.should have_content "Comercio: #{dados[:nome]}"

  end

end