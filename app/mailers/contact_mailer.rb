class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: 'kawakatu1227@gmail.com', subjecct: 'お問い合わせ内容'
    end
end
