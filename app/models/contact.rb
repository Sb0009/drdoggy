# frozen_string_literal: true

require 'email_format_validator'
class Contact < ActiveRecord::API
  attr_accessible :last_name, :email, :subject, :body, :attach, :last_name
  :presence => true
  validates :email, presence: true, email_format: true
  #  validates_format_of :attach_file_name, :with => %r{\.(docx|doc|pdf)$}i,
  #    :message => 'Only PDF, doc, docx or TEXT files are allowed. '
  #   validates_attachment_presence :attach

  def self.after_create(contact)
    # code here
    @contact = contact
    @contact = contact
  end

  after_create :send_mail
  def send_mail
    ContactMailer.contact(self).deliver
  end
end
