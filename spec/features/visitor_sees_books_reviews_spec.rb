require 'spec_helper'

feature 'Visitor is on welcome page' do
  scenario 'and sees name of application' do
    visit root_path
    expect(page).to have_content('Books')
  end
end
