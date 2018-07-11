module LogsStats
  def self.most_views(logs)
    logs
      .group_by(&:webpage)
      .each_with_object([]) do |(webpage, grouped_logs), array|
        array << LogStat.new(
          webpage: webpage,
          count: grouped_logs.count
        )
      end
      .sort_by(&:count)
      .reverse
  end

  def self.most_uniq_views(logs)
    logs
      .group_by(&:webpage)
      .each_with_object([]) do |(webpage, grouped_logs), array|
        array << LogStat.new(
          webpage: webpage,
          count: grouped_logs.map(&:ip_address).uniq.count
        )
      end
      .sort_by(&:count)
      .reverse
  end
end
