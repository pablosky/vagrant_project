class CompaniesController < ApplicationController
  before_action :set_company,  only: [:edit, :update , :destroy]

  def index
  	@companies = Company.all
  end

  def new
  	@company = Company.new
  end

  def create
  	@company = Company.new(company_params)

  	if @company.save
  		flash[:notice] = "Company successfully created"
  		redirect_to companies_path() 
  	else
  		redirect_to companies_path() , notice: 'Company not created :('
  	end

  end

  def edit
  end
  #functions with set_company
  def update  
      @company.assign_attributes(company_params)
      @company.save
      redirect_to companies_path()
  end
  def destroy 
     @company.destroy #sets destroyed at with paranoia
     redirect_to companies_path()
  end

  protected

  def set_company
    @company = Company.find(params[:id])
  end  

  def company_params
    params.require(:company).permit(:company_name,:company_contact_phone,:company_country,:company_contact_name,:company_email)
  end

end

