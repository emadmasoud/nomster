class NotificationMailer < ApplicationMailer
 def comment_added(comment)
   @place = comment.place
   @place_owner = @place.user
   mail(to: @place_owner.email,

  def comment_added
    mail(to: "my@email.com",
      subject: "A comment has been added to your place")
      subject: "A comment has been added to #{@place.name}")
  end
end