require 'rails_helper'

RSpec.describe User, type: :model do
  ActionMailer::Base.delivery_method = :test

  describe 'case when re-update email after 4 days' do
    it 'should send reconfirmation email after update user on the same email' do
      user = create(:user)
      p user.confirmed?
      p Devise.mailer.deliveries
      # expect(user).to receive(user.send_confirmation_instructions)
      # user.send_confirmation_instructions
      user.save
      # user.send_confirmation_instructions
      # expect { user.save }.to change(ActionMailer::Base.deliveries, :count).by(1)

      user.update_attributes(email: 'werty@wer.ci')
      p '***********************************'
      p user.confirm

      p Devise.mailer.deliveries
      # expect(ActionMailer::Base.deliveries.count).to eq 1
    end
  end
end

