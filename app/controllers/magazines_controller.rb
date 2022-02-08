class MagazinesController < InheritedResources::Base

def index
  @magazines = Magazine.all
  @grouped_magazines = @magazines.order(year: :desc).group_by { |year| year.year }


end

  private

    def magazine_params
      params.require(:magazine).permit(:name, :month, :year, :cover, :file)
    end

end
