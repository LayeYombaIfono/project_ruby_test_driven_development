# Définit une méthode appelée `day_trader` qui prend en paramètre un tableau de prix
def day_trader(prices)
  # Initialise la meilleure marge de profit trouvée à 0
  best_profit = 0

  # Initialise les meilleurs jours d'achat et de vente (indices du tableau)
  best_days = [0, 0]

  # On parcourt chaque prix du tableau avec son index pour simuler les jours d'achat
  prices.each_with_index do |buy_price, buy_day|
    # Pour chaque jour d'achat, on regarde tous les jours suivants pour vendre
    (buy_day+1...prices.length).each do |sell_day|
      # On récupère le prix de vente à ce jour
      sell_price = prices[sell_day]

      # On calcule le profit possible pour cet achat/revente
      profit = sell_price - buy_price

      # Si ce profit est meilleur que le meilleur trouvé jusqu'à présent
      if profit > best_profit
        # On met à jour le meilleur profit
        best_profit = profit
        # Et on stocke les jours correspondant à cet achat et cette vente
        best_days = [buy_day, sell_day]
      end
    end
  end

  # On retourne les jours optimaux pour acheter puis vendre
  best_days
end
