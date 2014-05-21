require "spec_helper"

describe RecargasController do
  describe "url to actions" do
    it { expect(post("/clientes/1/recargas/dez_reais")).to route_to(controller: "recargas", action: "dez_reais", cliente_id: "1") }
    it { expect(post("/clientes/1/recargas/vinte_reais")).to route_to(controller: "recargas", action: "vinte_reais", cliente_id: "1") }
    it { expect(post("/clientes/1/recargas/cinquenta_reais")).to route_to(controller: "recargas", action: "cinquenta_reais", cliente_id: "1") }
  end

  describe "url helpers" do
    it { expect(dez_reais_cliente_recargas_path("1")).to eq("/clientes/1/recargas/dez_reais") }
    it { expect(vinte_reais_cliente_recargas_path("1")).to eq("/clientes/1/recargas/vinte_reais") }
    it { expect(cinquenta_reais_cliente_recargas_path("1")).to eq("/clientes/1/recargas/cinquenta_reais") }
  end
end
