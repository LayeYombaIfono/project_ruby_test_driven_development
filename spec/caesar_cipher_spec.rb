require_relative'../lib/caesar_cipher'

describe "#caesar_cipher"do 
	it "chiffre une phrase avec un décalage simple" do 
		expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end

	it "gère le rebouclage de z vers a" do
    expect(caesar_cipher("Xyz", 5)).to eq("Cde")
  end

  it "préserve la casse (majuscules/minuscules)" do
    expect(caesar_cipher("A", 3)).to eq("D")
    expect(caesar_cipher("a", 3)).to eq("d")
  end

  it "ignore les caractères non alphabétiques" do
    expect(caesar_cipher("123!@#", 5)).to eq("123!@#")
  end

  it "ne modifie pas la chaîne si le décalage est zéro" do
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
  end

  it "accepte les décalages négatifs" do
    expect(caesar_cipher("Cde", -3)).to eq("Zab")
  end
end