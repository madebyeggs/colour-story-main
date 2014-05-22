task :blog_pull => :environment do
  Writing.update_from_feed('http://www.arthurbuxton.com/feeds/posts/default?alt=rss')
end