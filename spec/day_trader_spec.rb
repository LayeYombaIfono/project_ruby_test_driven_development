require_relative '../lib/day_trader'
describe "#day_trader" do
  it "trouve les meilleurs jours d'achat et de vente pour un bénéfice maximum" do
    prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(day_trader(prices)).to eq([1, 4])
  end

  it "retourne [0,0] si aucun bénéfice possible" do
    prices = [9, 8, 7, 6, 5]
    expect(day_trader(prices)).to eq([0, 0])
  end

  it "trouve les bons jours dans un tableau de petite taille" do
    prices = [2, 5]
    expect(day_trader(prices)).to eq([0, 1])
  end

  it "fonctionne avec des prix identiques" do
    prices = [5, 5, 5, 5]
    expect(day_trader(prices)).to eq([0, 0])
  end

  it "fonctionne avec plusieurs possibilités de profits" do
    prices = [1, 5, 3, 8, 4]
    expect(day_trader(prices)).to eq([0, 3]) # 8 - 1 = 7
  end
end