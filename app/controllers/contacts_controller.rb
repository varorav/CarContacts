class ContactsController < ApplicationController
  before_action :authenticate_user!
  def new
    @contact = Contact.new
  end
  def new_contact
  end

  def create
    c = params["[cars]"]
    p = params.extract!(:name, :instagram, :phone_number, :address, :note)
    p.permit!
    @contact = Contact.new(p)
    @contact.contact_book_id = current_user.contact_book.id
    contact_status = @contact.save
    c.permit!
    ap c
    @car = Car.new(c)
    @car.contact_id = @contact.id
    ap @car

    if contact_status && @car.save
      redirect_to(controller: :contact_books, action: 'index', id: current_user.id)
    else
      redirect_to contacts_new_contact_path
    end


  end

  def read
    @contact = Contact.where(id: params[:id], contact_book_id: current_user.contact_book.id).take
    unless @contact.present?
      render :missing_contact
    end
  end

  def update
  end

  def delete
  end
end
