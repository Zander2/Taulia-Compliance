class CountryController < ApplicationController

  def index
    @new_country = Country.new
    @user = current_user
    if params[:search]
      if params[:search] == ''
        @country = Country.all.order('iso_code DESC')
        p @country
      else
        @country = Country.where("iso_code = ?",  "#{params[:search]}")
        p @country
      end
    else
      @country = Country.all.order('iso_code DESC')
      p @country
    end
    @search = ""
    render "index"
  end

  def show
    @search = ""
    @country = Country.find(params[:id])
    p @country
    render "show"
  end

  def edit
    @search = ""
    @country = Country.find(params[:id])
    p @country
    render "edit"
  end

  def create
    @search = ""
    @new_country = Country.new(country_params)
    @new_country.save
    redirect_to "/country"
  end

  def update
    @search = ""
    country = Country.find(params[:id])
    country.update(country_params)
    redirect_to "/country/#{params[:id]}"
  end

  def destroy
    @search = ""
    country = Country.find(params[:id])
    country.destroy
    redirect_to "/country"
  end

private
  def country_params
    params.require(:country).permit(:iso_code,:name_en,:name_local,:country_flag,:regime_type,:signed_validated,:compliance_footer,:footer_note,:archv_tw,:taulia_pdf,:suppliers_responsibilities,:buyer_responsibilities,:taulia_compliante)
  end
end
