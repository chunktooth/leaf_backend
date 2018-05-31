require 'rails_helper'

RSpec.describe Plant, type: :model do
 it { should validate_presence_of(:name) }
  it { should validate_presence_of(:sci_name) }
  it { should validate_presence_of(:img) }
  it { should belong_to(:user) }
end
