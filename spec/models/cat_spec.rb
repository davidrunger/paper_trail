# frozen_string_literal: true

require "spec_helper"

RSpec.describe Cat, :versioning, type: :model do
  describe "#descends_from_active_record?" do
    it "returns false, meaning that Cat is an STI subclass" do
      expect(described_class.descends_from_active_record?).to be(false)
    end
  end
end
