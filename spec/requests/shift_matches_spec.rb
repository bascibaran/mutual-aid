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

RSpec.describe "/shift_matches", type: :request do
  # ShiftMatch. As you add validations to ShiftMatch, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ShiftMatch.create! valid_attributes
      get shift_matches_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      shift_match = ShiftMatch.create! valid_attributes
      get shift_match_url(shift_match)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_shift_match_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      shift_match = ShiftMatch.create! valid_attributes
      get edit_shift_match_url(shift_match)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ShiftMatch" do
        expect {
          post shift_matches_url, params: { shift_match: valid_attributes }
        }.to change(ShiftMatch, :count).by(1)
      end

      it "redirects to the created shift_match" do
        post shift_matches_url, params: { shift_match: valid_attributes }
        expect(response).to redirect_to(shift_match_url(ShiftMatch.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ShiftMatch" do
        expect {
          post shift_matches_url, params: { shift_match: invalid_attributes }
        }.to change(ShiftMatch, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post shift_matches_url, params: { shift_match: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested shift_match" do
        shift_match = ShiftMatch.create! valid_attributes
        patch shift_match_url(shift_match), params: { shift_match: new_attributes }
        shift_match.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the shift_match" do
        shift_match = ShiftMatch.create! valid_attributes
        patch shift_match_url(shift_match), params: { shift_match: new_attributes }
        shift_match.reload
        expect(response).to redirect_to(shift_match_url(shift_match))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        shift_match = ShiftMatch.create! valid_attributes
        patch shift_match_url(shift_match), params: { shift_match: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested shift_match" do
      shift_match = ShiftMatch.create! valid_attributes
      expect {
        delete shift_match_url(shift_match)
      }.to change(ShiftMatch, :count).by(-1)
    end

    it "redirects to the shift_matches list" do
      shift_match = ShiftMatch.create! valid_attributes
      delete shift_match_url(shift_match)
      expect(response).to redirect_to(shift_matches_url)
    end
  end
end
