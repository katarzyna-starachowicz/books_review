require 'rails_helper'

describe AuthorDecorator do
  let(:author) { create(:author, first_name: 'Witold', last_name: 'Gombrowicz') }
  let(:book_1) { create(:book, title: 'Ferdydurke', published_at: Date.new(1937)) }
  let(:book_2) { create(:book, title: 'Kosmos',     published_at: Date.new(1965)) }

  before { author.books << book_1 }

  describe '#name' do
    subject { author.decorate.name }

    it 'returns formatted name' do
      is_expected.to eq 'Witold Gombrowicz'
    end
  end

  context 'when author wrote one book' do
    subject { author.decorate.formatted_books_titles }

    describe '#formatted_books_titles' do
      it 'returns only that one title' do
        is_expected.to eq 'Ferdydurke'
      end
    end

    context 'when author wrote one more book' do
      before { author.books << book_2 }

      describe '#formatted_books_titles' do
        it 'returns books titles with pipe' do
          is_expected.to eq 'Ferdydurke | Kosmos'
        end
      end
    end
  end
end
