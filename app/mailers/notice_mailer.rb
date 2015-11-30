class NoticeMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user)
    @greeting = "Hi"
    @username = user.username
    @userid = user.userid

    mail to: "kat_tun_jinkazu_love@yahoo.co.jp", subject: "登録完了通知"
  end
end
