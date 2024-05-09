class ContactsController < ApplicationController
  before_action :authenticate_user!
  def new
    @contact = Contact.new
  end
  def new_contact
  end

  def create
    p = params.extract!(:name, :instagram, :phone_number, :address, :note)
    p.permit!
    @contact = Contact.new(p)
    @contact.contact_book_id = current_user.contact_book.id

    if @contact.save
      redirect_to(controller: :contact_books, action: 'index', id: current_user.id)
    else
      render :new
    end
  end

  def read
  end

  def update
  end

  def delete
  end
end
