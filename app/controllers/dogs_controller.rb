class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.image_url = Dog.random_dog
    if @dog.save
      redirect_to @dog
    else
      flash[:errors] = @dog.errors.full_messages
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      render :edit
    end
  end

  def destroy
   @dog = Dog.find(params[:id])
   @dog.destroy
   redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age)
  end

end
