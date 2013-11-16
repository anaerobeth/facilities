require 'spec_helper'

describe Enclosure do
  it { should_validate_presence_of(:category) }
  it { should_validate_presence_of(:location) }
end
