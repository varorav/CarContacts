class ContactBooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @name = current_user.email
    contactbook = current_user.contact_book || ContactBook.create_for_user(current_user)
    contacts = contactbook.contacts
    @names_and_cars = []
    @names_to_ids = {}
    contacts.each do |contact|
      @names_to_ids[contact.name] = contact.id
      contact_cars = []
      if contact.cars.present?
        contact_cars = contact.cars.map {|car| [car.name]}
      end
     @names_and_cars.push([contact.name, contact_cars])
    end
  end
end
