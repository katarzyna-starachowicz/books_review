require 'rails_helper'

describe BookDecorator do
  let(:author_1) { create(:author, first_name: 'Witold', last_name: 'Gombrowicz') }
  let(:author_2) { create(:author, first_name: 'Bruno', last_name: 'Schulz') }
  let(:book)     { create(:book, title: 'Listy', published_at: Date.new(2005)) }

  before { book.authors << author_1 }

  context 'when book has one author' do
    subject { book.decorate.formatted_authors }

    describe '#formatted_authors' do
      it 'returns first and last name of author' do
        is_expected.to eq 'Witold Gombrowicz'
      end
    end

    context 'when book has two authors' do
      before { book.authors << author_2 }

      describe '#formatted_authors' do
        it 'returns formated authors names with pipe' do
          is_expected.to eq 'Witold Gombrowicz | Bruno Schulz'
        end
      end
    end
  end

  describe '#title_with_date' do
    subject { book.decorate.title_with_date }

    it 'returns title with publication year in brackets' do
      is_expected.to eq 'Listy (2005)'
    end
  end
end
