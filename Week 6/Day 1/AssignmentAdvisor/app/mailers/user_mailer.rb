class UserMailer < ActionMailer::Base
  default from: "will@WillsAssignmentAdvisor.com"
  def new_assignment_email(user, cohort)
    @cohort = cohort
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
