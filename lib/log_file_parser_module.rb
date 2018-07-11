module LogFileParser
  LOG_REGEXP = /^\S+\s\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/

  def self.parse(file)
    file.each_with_object([]) do |line, logs|
      logs << parse_line(line) if line_valid?(line)
    end
  end

  private

  def self.line_valid?(line)
    line.match(LOG_REGEXP)
  end

  def self.parse_line(line)
    splitted_line = line.split(' ')
    Log.new(
      webpage: splitted_line[0],
      ip_address: splitted_line[1]
    )
  end
end
