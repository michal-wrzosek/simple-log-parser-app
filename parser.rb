Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }

file_path = ARGV[0]
raise ArgumentError unless File.exists?(file_path)
log_file = File.open(file_path)
logs = LogFileParser.parse(log_file)

puts "Webpages with most views:"
LogsStats.most_views(logs).each do |log_stat|
  puts "#{log_stat.webpage} - #{log_stat.count} visits"
end

puts ""
puts ""

puts "Webpages with most unique views:"
LogsStats.most_uniq_views(logs).each do |log_stat|
  puts "#{log_stat.webpage} - #{log_stat.count} unique page views"
end
