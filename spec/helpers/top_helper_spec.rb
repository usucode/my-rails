require 'rails_helper'

RSpec.describe TopHelper, type: :helper do
  context 'when access to top page' do
    it "say name! return" do
      expect(helper.say_hello('Yusuke')).to eq('Hello, Yusuke!')
    end
  end
end
