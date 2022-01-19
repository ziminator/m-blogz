class Web::MicropostsController < Web::ApplicationController
  #before_action :load_micropost, only: %i[show edit update destroy]

  def index
    @microposts = Micropost.all
  end

  def show
  end

  def new 
  end

  def edit
  end

  def create
    @micropost = Micropost.new(micropost_params)

    if @micropost.save
      redirect_to @micropost
    else
      render :new
    end
  end

  def update
    if micropost.update(micropost_params)
      redirect_to @micropost
    else
      render :edit
    end
  end

  def destroy
    micropost.destroy
    redirect_to micropost_path
  end

  private

  def micropost
    @micropost ||= params[:id] ? Micropost.find(params[:id]) : Micropost.new
  end
  
  def micropost_params
    params.require(:micropost).permit(:body)
  end
  

end
