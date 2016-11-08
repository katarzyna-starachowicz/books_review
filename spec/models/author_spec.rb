require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :avatar }
    it { is_expected.to have_db_column :biography }
  end

  describe 'associations' do
    it { is_expected.to have_many :authors_books }
    it { is_expected.to have_many :books }
  end
end
