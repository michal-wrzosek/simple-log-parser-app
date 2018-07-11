require "spec_helper"
require "log_file_parser_module"

describe "LogFileParser" do
  subject { LogFileParser }

  describe "#parse" do
    let(:file) { File.open('spec/fixtures/test.log') }
    it 'should return array of a correct length' do
      expect(subject.parse(file).length).to be == 9
    end

    it 'should return array of objects with correct webpage' do
      expect(subject.parse(file).first.webpage).to be == '/contact'
    end

    it 'should return array of objects with correct ip_address' do
      expect(subject.parse(file).first.ip_address).to be == '184.123.665.067'
    end
  end
end
