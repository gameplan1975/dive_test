class SwitchLeaderMailer < ApplicationMailer
  default from: 'from@example.com'

  def switch_leader_mail(next_leader)
    @next_leader = next_leader
    mail to: @next_leader.email, subject: I18n.t('views.messages.switch leader')
  end
end
