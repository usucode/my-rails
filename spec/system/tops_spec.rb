require 'rails_helper'

RSpec.describe 'Tops', type: :system do
  context 'when access to top page' do
    it 'user accesses to top page' do
      # Necessary to avoid error when accessing to top page.
      # prepare_for_top_page

      visit root_path
      expect(page.status_code).to eq(200)
      expect(page).to have_current_path(root_path)
    end
  end
end