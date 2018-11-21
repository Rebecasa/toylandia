class ToysController < ApplicationController
  # Any visitor can access the Toys index and the individual show pages
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # Toys for the authorization
    @toys = policy_scope(Toy).order(created_at: :desc)
    authorize @toys

    # Toys to show on the map
    @toysmap = Toy.where.not(latitude: nil, longitude: nil)

    @markers = @toysmap.map do |toy|
      {
        lng: toy.longitude,
        lat: toy.latitude,
        infoWindow: { content: render_to_string(partial: "/toys/map_window", locals: { toy: toy }) }
      }
    end
  end

  def show
    @toy = Toy.find(params[:id])
    authorize @toy
  end

  def new
    @toy = Toy.new
    authorize @toy
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    authorize @toy
    if @toy.save
      redirect_to @toy
    else
      render 'new'
    end
  end

  def edit
    @toy = Toy.find(params[:id])
    authorize @toy
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
    authorize @toy
    if @toy.save
      redirect_to @toy
    else
      render 'edit'
    end
  end

  private

  def toy_params
    params.require(:toy)
          .permit(
            :name,
            :description,
            :location,
            :price,
            :status,
            :category,
            :photo
          )
  end
end
