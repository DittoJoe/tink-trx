require('json')
require "csv"

file = File.read('./object.json')
data = JSON.parse(file)
result = []
data["searchHits"].each { |hit| result << hit["transaction"]["payload"]["EXTERNAL_ID"] }
CSV.open('./result.csv', "wb") do |csv|
    csv << result
end

