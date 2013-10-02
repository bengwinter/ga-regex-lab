require_relative 'source'
require 'pry'

def valid_ip_addresses(a)
  a.scan /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/
end 

def valid_mit_ip_addresses(a)
  a.scan /[1][8]\.\d{1,3}\.\d{1,3}\.\d{1,3}/
end

def non_mit_ip_addresses(a)
  a.scan /[0-7,9][0-7,9][0-7,9]?\.\d{1,3}\.\d{1,3}\.\d{1,3}/
end 

def valid_phone_numbers(a)
  a.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(a)
  a.scan(/\b[2-9]{1}\d{0,2}\-\d{0,3}\-\d{4}\b/).uniq.map{|x| x[0..2]}
end

def email_addresses(a)
  a.scan(/(([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,}))/).map(&:first)
end

def zip_codes(a)
  a.scan(/\b(\d{5})\b/).map(&:first)
end

def hex_colors(a)
  a.scan(/#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})/).map(&:first)
end