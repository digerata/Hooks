class PostmarkController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def receive
    if request.headers['Content-Type'] == 'application/json'
      data = JSON.parse(request.body.read)
    else
      # application/x-www-form-urlencoded
      data = params.as_json
    end

    event = MailEvent.from_json(data)
    event.save!
    render :plain => "Captured open. Thank you.", status: :created
  end

end