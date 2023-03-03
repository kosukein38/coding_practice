#api

require 'net/http'
require 'uri'
require "json"

uri = URI.parse('https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json')
res = Net::HTTP.get_response(uri)

res_json = JSON.parse(res.body)
@convert_table = { 
  'publishingOffice' => '発表者',
  'reportDatetime' => '報告日時',
  'targetArea' => '対象地域',
  'headlineText' => 'ヘッドライン',
  'text' => '詳細'
}

def use_each_with_object(hash)
  hash.each_with_object({}) {|(key, value), new_hash|
    new_hash[@convert_table[key]] = value
  }
end
use_each_with_object(res_json).each do |k, v|
  puts "#{k}: #{v}"
end
