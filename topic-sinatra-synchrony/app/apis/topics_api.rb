class TopicsAPI < Sinatra::Base
  register Sinatra::Synchrony
  helpers Sinatra::JSON

  get '/new_topics.json' do
    @topics = Topic.last(10)
    json @topics
  end

  get '/topic/:topic_id/users.json' do
    @topic = Topic.find params[:topic_id]
    post = @topic.posts.includes(:user).map(&:user)
    json post
  end
end