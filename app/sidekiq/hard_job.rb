class HardJob
  include Sidekiq::Job

  def perform(message)
    p message
  end
end
