class ContractsController < ApplicationController
  
  before_action :set_contract,  only: [:edit, :update , :destroy]

  def index  
    if params[:company_id]
  	   @contracts = Contract.where(company_id: params[:company_id].to_i)
    else
      @contracts = Contract.all
    end 
  end

  def new
  	@contract = Contract.new
    @companies = Company.where(deleted: [false,nil])
  end

  def create
  	@contract = Contract.new(contract_params)

  	if @contract.save
  		flash[:notice] = "Contract successfully created"
  		redirect_to contracts_path() 
  	else
  		redirect_to contracts_path() , notice: 'Contract not created'
  	end

  end

  #before action set_contract
  def edit
    @companies = Company.where(deleted: [false,nil])
  end

  def update
     @contract.assign_attributes(contract_params)
     @contract.save
     redirect_to contracts_path() , notice: 'Contract successfully updated'
  end
  def destroy
    @contract.destroy #sets destroyed at with paranoia
    redirect_to contracts_path()
  end


  protected

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:company_id, :start_date, :end_date ,:contact , :contact_phone , :contract_email , :amount)
  end

end