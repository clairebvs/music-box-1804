require 'rails_helper'

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Artist, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
  end
end