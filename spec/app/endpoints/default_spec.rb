require 'spec_helper'

describe Framework::Default do
  context 'visit the index page' do
    it 'loads the page' do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
