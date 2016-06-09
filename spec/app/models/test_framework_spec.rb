require 'spec_helper'
require File.expand_path '../../../../lib/framework/app/models/test_framework', __FILE__

describe TestFramework do
  it 'initializes an instance of TestFramework' do
    description = 'This works!'
    test = TestFramework.create(description: description)
    expect(test.description).to eq(description)
  end
end