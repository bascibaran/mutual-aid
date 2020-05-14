 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/teams", type: :request do
  # Team. As you add validations to Team, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Team.create! valid_attributes
      get teams_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      team = Team.create! valid_attributes
      get team_url(team)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_team_url(resource: Team.new)
      # skip # TODO
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      team = Team.create! valid_attributes
      get edit_team_url(team)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Team" do
        expect {
          post teams_url, params: { team: valid_attributes }
        }.to change(Team, :count).by(1)
      end

      it "redirects to the created team" do
        post teams_url, params: { team: valid_attributes }
        expect(response).to redirect_to(team_url(Team.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Team" do
        expect {
          post teams_url, params: { team: invalid_attributes }
        }.to change(Team, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post teams_url, params: { team: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested team" do
        team = Team.create! valid_attributes
        patch team_url(team), params: { team: new_attributes }
        team.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the team" do
        team = Team.create! valid_attributes
        patch team_url(team), params: { team: new_attributes }
        team.reload
        expect(response).to redirect_to(team_url(team))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        team = Team.create! valid_attributes
        patch team_url(team), params: { team: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested team" do
      team = Team.create! valid_attributes
      expect {
        delete team_url(team)
      }.to change(Team, :count).by(-1)
    end

    it "redirects to the teams list" do
      team = Team.create! valid_attributes
      delete team_url(team)
      expect(response).to redirect_to(teams_url)
    end
  end
end
