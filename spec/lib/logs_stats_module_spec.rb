require "spec_helper"
require "ostruct"
require "logs_stats_module"

logs = [
  OpenStruct.new(webpage: 'test/webpage/1', ip_address: '1.1.1.1'),
  OpenStruct.new(webpage: 'test/webpage/1', ip_address: '1.1.1.1'),
  OpenStruct.new(webpage: 'test/webpage/1', ip_address: '1.1.1.1'),
  OpenStruct.new(webpage: 'test/webpage/2', ip_address: '1.1.1.1'),
  OpenStruct.new(webpage: 'test/webpage/2', ip_address: '1.1.1.2')
]

describe "LogsStats" do
  subject { LogsStats }

  describe "#most_views" do
    it 'returns array with a correct length' do
      expect(subject.most_views(logs).length).to be == 2
    end

    it 'return array of objects with correct webpage' do
      expect(subject.most_views(logs).first.webpage).to be == 'test/webpage/1'
    end

    it 'return array of objects with correct count' do
      expect(subject.most_views(logs).first.count).to be == 3
    end
  end

  describe "#most_uniq_views" do
    it 'returns array with a correct length' do
      expect(subject.most_uniq_views(logs).length).to be == 2
    end

    it 'return array of objects with correct webpage' do
      expect(subject.most_uniq_views(logs).first.webpage).to be == 'test/webpage/2'
    end

    it 'return array of objects with correct count' do
      expect(subject.most_uniq_views(logs).first.count).to be == 2
    end
  end
end
