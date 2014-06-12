class Writing < ActiveRecord::Base
  attr_accessible :name, :summary, :url, :publishedat, :guid, :content, :author, :image
  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :publishedat  => entry.published.strftime("%B %d, %Y"),
          :guid         => entry.id,
          :content      => entry.summary[0..-60],
          :author       => entry.author[21..33]
        )
      end
    end
  end
end