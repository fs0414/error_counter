require 'rails_helper'

module ErrorCounter
  RSpec.describe Counter, type: :model do
  
    it '@totalが@individual_totalの合計値であること' do
      total = instance_variable_get('@total')
      individual_total = instance_variable_get('@individual_total')
      expect(individual_total).to eq total
    end
  end
end
