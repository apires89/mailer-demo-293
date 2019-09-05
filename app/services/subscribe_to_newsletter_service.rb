class SubscribeToNewsletterService
  #business logic
  def initialize(user)
    @user = user
    #request to gibbon/mailchimp API
    @gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    #set the audience ID
    @audience_id = ENV['MAILCHIMP_AUDIENCE_ID']
  end

  def call
    #for each of the persons in my audience, i will create an email confirming
    #their subscription.
    @gibbon.lists(@audience_id).members.create(
      body: {
        email_address: @user.email,
        status: "subscribed",
        # merge_fields: {
        #   FNAME: @user.first_name,
        #   LNAME: @user.last_name
        # }
      }
    )
  end
end
