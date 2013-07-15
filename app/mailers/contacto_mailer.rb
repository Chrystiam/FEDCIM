class ContactoMailer < ActionMailer::Base

    def registration_contacto(contacto)
    	@contactos = contacto
    	attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png") 
        mail(:to => 'chrystiamgg@misena.edu.co', :subject => "Cantacto Cliente FEDCIM ", :from => "chrystiamgg@misena.edu.co")
    end

end
