require 'rails_helper'

RSpec.describe Track, :type => :model do
  it { should have_many :bmarks }
  it { should validate_presence_of :name }
end
