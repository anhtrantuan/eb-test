class PygmentsWorker
  include Sidekiq::Worker

  def perform(post_id)
    post = Post.find(post_id)
    post.update_attribute(:highlighted_content, CodeRay.scan(post.content, :ruby).div(line_numbers: :table))
  end
end
