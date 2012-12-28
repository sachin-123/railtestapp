class EmployeesController < ApplicationController
   def index
   @listHeading = 'Employee List';
   @employees = Employee.find(:all)   
   end	
   def list
	@employees = Employee.find(:all)
   end
   def show
	@employee = Employee.find(params[:id])
   end
   
   def new
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end

    
   end
   def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Demo1 was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
   end
   def edit
	@employee = Employee.find(params[:id])
   end
   def update
		@employee = Employee.find(params[:id])

		respond_to do |format|
		  if @employee.update_attributes(params[:employee])
			format.html { redirect_to @employee, notice: 'Demo1 was successfully updated.' }
			format.json { head :no_content }
		  else
			format.html { render action: "edit" }
			format.json { render json: @employee.errors, status: :unprocessable_entity }
		  end
		end
   end
   def delete
   end
end
