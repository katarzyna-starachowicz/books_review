require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :published_at }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :published_at }
    it { is_expected.to have_db_column :cover }
  end
end
