class CertificatesController < ApplicationController
  def index
  end

  def search
    @participant = Participant.find_by(email: params[:email])
    render action: :index, alert: "Nenhum participante encontrado com o e-mail \"#{params[:email]}\"", status: :not_found if @participant.nil?
    @events = @participant.events unless @participant.nil?
  end

  def show
    @event = Event.find(params[:event_id])
    @participant = Participant.find(params[:participant_id])
    render @event.pdf_template, layout: @event.pdf_layout
  end
end
