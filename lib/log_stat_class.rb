class LogStat
  attr_reader :webpage, :count

  def initialize(args)
    @webpage = args[:webpage]
    @count = args[:count]
  end
end
