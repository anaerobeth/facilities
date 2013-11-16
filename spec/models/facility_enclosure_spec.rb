require 'spec_helper'

describe FacilityEnclosure do
  it { should_belong_to(:facility) }
  it { should_belong_to(:enclosure) }
  it { should_validate_presence_of(:facility) }
  it { should_validate_presence_of(:enclosure) }
end
