class LogsWorker
  include Sneakers::Worker

  from_queue 'basic_app_book_logs', exchange: 'basic_app', exchange_type: :direct, routing_key: ['basic_app.book_loans.create', 'basic_app.book_loans.cancel']

  def work(data)
    message = JSON.parse(data)
    Log.create(user_id: message.dig("user_id"), data: message)
  end

end
