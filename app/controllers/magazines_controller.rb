class MagazinesController < InheritedResources::Base

def index
  @magazines = Magazine.all
  @year2018 = Magazine.where(year: "2018")
  @year2019 = Magazine.where(year: "2019")
  @year2020 = Magazine.where(year: "2020")



end

  private

    def magazine_params
      params.require(:magazine).permit(:name, :month, :year, :cover, :file)
    end

end
