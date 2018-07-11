require "spec_helper"
require "log_class"

describe Log do
  subject { described_class.new(
    webpage: "/test/1",
    ip_address: "132.142.112.324"
  ) }

  describe "#webpage" do
    it 'returns webpage that was passed on creation' do
      expect(subject.webpage).to be == "/test/1"
    end
  end

  describe "#ip_address" do
    it 'returns ip_address that was passed on creation' do
      expect(subject.ip_address).to be == "132.142.112.324"
    end
  end
end
