class DeleteTeamMailer < ApplicationMailer
  default from: 'from@example.com'
      
  def delete_team_mail(assigns)
    @assigns = assigns

    @assigns.each do |assign|
      mail to: assign.user.email, subject: I18n.t('views.messages.delete agenda')
    end
  end
end
