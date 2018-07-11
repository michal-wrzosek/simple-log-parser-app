require "spec_helper"
require "log_stat_class"

describe LogStat do
  subject { described_class.new(
    webpage: "/test/14",
    count: 24
  ) }

  describe "#webpage" do
    it 'returns webpage that was passed on creation' do
      expect(subject.webpage).to be == "/test/14"
    end
  end

  describe "#count" do
    it 'returns count that was passed on creation' do
      expect(subject.count).to be == 24
    end
  end
end
