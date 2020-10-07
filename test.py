import smtplib

from email.message import EmailMessage

msg = EmailMessage()
msg.set_content("A Dummy content")

msg['Subject'] = "A Dummy subject"
msg['From'] = "jlopez@lendingfront.com"
msg['To'] = "automation.jobs@lendingfront.com"

mailhogServer = smtplib.SMTP('localhost',1025)
mailhogServer.send_message(msg)
mailhogServer.quit()
