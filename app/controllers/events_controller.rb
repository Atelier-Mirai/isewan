class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  # GET /events or /events.json
  def index
    @events = Event.order(start_date: :asc, id: :asc)
    @event = Event.new
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params(permit_nor_pdfs: true, permit_result_pdfs: true))

    if @event.save
      redirect_to events_path, notice: "event was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    nor_pdfs_flag = true
    # PDFの削除
    params[:event][:nor_pdf_ids]&.each do |id|
      @event.nor_pdfs.find(id).purge
      nor_pdfs_flag = false
    end

    # PDFの追加
    if @event.nor_pdfs.attached?
      @event.nor_pdfs.attach(params[:event][:nor_pdfs])
      nor_pdfs_flag = false
    end

    result_pdfs_flag = true
    # PDFの削除
    params[:event][:result_pdf_ids]&.each do |id|
      @event.result_pdfs.find(id).purge
      result_pdfs_flag = false
    end

    # PDFの追加
    if @event.result_pdfs.attached?
      @event.result_pdfs.attach(params[:event][:result_pdfs])
      result_pdfs_flag = false
    end

    # 文字や画像の更新
    if @event.update(event_params(permit_nor_pdfs: nor_pdfs_flag, permit_result_pdfs: result_pdfs_flag))
      redirect_to events_path, notice: "event was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy
    redirect_to events_path, notice: "event was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params(permit_nor_pdfs: true, permit_result_pdfs: true)
      permit = [:start_date, :end_date, :schedule_adjustment, :category, :name, :place, :nor_url, :result_url, :contact, :phone, :url, :email, :display]
      permit.push(nor_pdfs: [])    if permit_nor_pdfs
      permit.push(result_pdfs: []) if permit_result_pdfs

      params.require(:event).permit(permit)
    end
end
