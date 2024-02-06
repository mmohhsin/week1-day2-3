class Post < ApplicationRecord
  after_commit :notify_subscribers, on: [:create, :update]
  after_rollback :log_failed_creation, on: [:create]

  private

  def notify_subscribers
    puts "Notification sent to user on console!"
  end

  def log_failed_creation
    puts "Failed to create post. Rolling back changes..."
  end
end
