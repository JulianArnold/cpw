class StoreController < ApplicationController
  before_filter :find_brand, except: :index

  def index
    @brands = Brand.all_in_order
  end

  def brand
    if @brand.nil?
      flash[:error] = "Sorry, we couldn't find that brand"
      redirect_to store_url
    end
  end

  def device
    @device = @brand ? @brand.devices.where('lower(name) = ?', params[:device].downcase).first : nil
    if @device.nil?
      flash[:error] = "Sorry, we couldn't find that device"
      redirect_to store_brand_url(brand: @brand.name.downcase)
    end

  end

  protected

  def find_brand
    @brand = Brand.where('lower(name) = ?', params[:brand].downcase).first
  end

end
