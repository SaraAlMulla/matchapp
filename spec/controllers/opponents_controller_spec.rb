require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OpponentsController do

  # This should return the minimal set of attributes required to create a valid
  # Opponent. As you add validations to Opponent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :name => "UCI", :skill_level=> "moderate", :home_capacity=> 5566,

    :domestic => 'true', :rival => 'true'}

    #:domestic => false, :rival => false}

  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OpponentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all opponents as @opponents" do
      opponent = Opponent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:opponents).should eq([opponent])
    end
  end

  describe "GET show" do
    it "assigns the requested opponent as @opponent" do
      opponent = Opponent.create! valid_attributes
      get :show, {:id => opponent.to_param}, valid_session
      assigns(:opponent).should eq(opponent)
    end
  end

  describe "GET new" do
    it "assigns a new opponent as @opponent" do
      get :new, {}, valid_session
      assigns(:opponent).should be_a_new(Opponent)
    end
  end

  describe "GET edit" do
    it "assigns the requested opponent as @opponent" do
      opponent = Opponent.create! valid_attributes
      get :edit, {:id => opponent.to_param}, valid_session
      assigns(:opponent).should eq(opponent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Opponent" do
        expect {
          post :create, {:opponent => valid_attributes}, valid_session
        }.to change(Opponent, :count).by(1)
      end

      it "assigns a newly created opponent as @opponent" do
        post :create, {:opponent => valid_attributes}, valid_session
        assigns(:opponent).should be_a(Opponent)
        assigns(:opponent).should be_persisted
      end

      it "redirects to the created opponent" do
        post :create, {:opponent => valid_attributes}, valid_session
        response.should redirect_to(Opponent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved opponent as @opponent" do
        # Trigger the behavior that occurs when invalid params are submitted
        Opponent.any_instance.stub(:save).and_return(false)
        post :create, {:opponent => { "name" => "invalid value" }}, valid_session
        assigns(:opponent).should be_a_new(Opponent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Opponent.any_instance.stub(:save).and_return(false)
        post :create, {:opponent => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested opponent" do
        opponent = Opponent.create! valid_attributes
        # Assuming there are no other opponents in the database, this
        # specifies that the Opponent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Opponent.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => opponent.to_param, :opponent => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested opponent as @opponent" do
        opponent = Opponent.create! valid_attributes
        put :update, {:id => opponent.to_param, :opponent => valid_attributes}, valid_session
        assigns(:opponent).should eq(opponent)
      end

      it "redirects to the opponent" do
        opponent = Opponent.create! valid_attributes
        put :update, {:id => opponent.to_param, :opponent => valid_attributes}, valid_session
        response.should redirect_to(opponent)
      end
    end

    describe "with invalid params" do
      it "assigns the opponent as @opponent" do
        opponent = Opponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Opponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => opponent.to_param, :opponent => { "name" => "invalid value" }}, valid_session
        assigns(:opponent).should eq(opponent)
      end

      it "re-renders the 'edit' template" do
        opponent = Opponent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Opponent.any_instance.stub(:save).and_return(false)
        put :update, {:id => opponent.to_param, :opponent => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested opponent" do
      opponent = Opponent.create! valid_attributes
      expect {
        delete :destroy, {:id => opponent.to_param}, valid_session
      }.to change(Opponent, :count).by(-1)
    end

    it "redirects to the opponents list" do
      opponent = Opponent.create! valid_attributes
      delete :destroy, {:id => opponent.to_param}, valid_session
      response.should redirect_to(opponents_url)
    end
  end

end
