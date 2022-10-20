# frozen_string_literal: true

class ContactMailer < ActionMailer::Base
  default from: 'donotreply@mail.drdoggy.com'

  def contact(contact)
    @contact = contact
    #    attachments.inline['photo.png'] = File.read("localhost:3000#{@contact.attach.url(:original)}")
    mail(to: 'sihambadyine@gmail.com', subject: @contact.subject, from: @contact.email)
  end
end
