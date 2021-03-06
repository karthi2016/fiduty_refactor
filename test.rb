require 'csv'
require 'pry'
csv_text = File.read('app/channels/Safety_Net.csv')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  
  @advisor = Advisor.create(type_of_fund: row[1], name: row[2], address: row[4])
  @advisor.portfolios.create(open: row[10], day_high: row[11], day_low: row[12], volume: row[13], week_52: row[16], ytd: row[17], avg_1: row[19],
                            avg_3: row[20], avg_5: row[21], market_cap: row[22], p_e: row[23], beta: row[24], description: row[29], investment_type: 'Passive',
                            fund_type: row[3])
        
                          
end

# Rails.root.join('app', 'channels', 'Safety_Net.csv')


