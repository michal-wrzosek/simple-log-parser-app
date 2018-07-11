class Log
  attr_reader :webpage, :ip_address

  def initialize(args)
    @webpage = args[:webpage]
    @ip_address = args[:ip_address]
  end
end
