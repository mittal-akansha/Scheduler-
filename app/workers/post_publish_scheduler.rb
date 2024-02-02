
require 'sidekiq-scheduler'

class PostPublishScheduler
  include Sidekiq::Worker

  def perform
    puts 'Hello world'
    posts = Post.where("published_at < ?",Time.now)
         .where(published: false)
         .where(scheduled: true)
    posts.each do |post|
      post.publish
    end     
  end
end