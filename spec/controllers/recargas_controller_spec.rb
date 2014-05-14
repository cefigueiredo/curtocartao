require 'spec_helper'

describe RecargasController do
  let!(:cliente) { create(:cliente) }

  describe "PUT /cinco_reais" do
    def do_action(id=cliente.id)
      xhr :put, :cinco_reais, cliente_id: id
    end

    context "valid cliente id" do
      before(:each) do
        do_action
      end

      it { expect(response.status).to eq(200) }
      it { expect(json['saldo']).to eq "R$ 5,00" }
    end

    context "invalid cliente id" do

      it "responds with 404 not found" do
        expect do
          do_action("invalid")
        end.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
