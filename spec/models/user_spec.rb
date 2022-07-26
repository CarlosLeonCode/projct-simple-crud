# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:phone) }
    it { should define_enum_for(:genre).with_values([:male, :female, :prefer_not_to_say]) }
  end
end
