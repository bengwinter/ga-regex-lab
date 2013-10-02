require_relative 'spec_helper'
require_relative '../main'
require_relative '../source'

describe "Regex Results" do
  let(:source_text) {$source_text}

  it "should have valid IP addresses" do
    expect(valid_ip_addresses(source_text)).to eq(["127.0.0.1", "203.15.20.74", "18.221.23.4", "18.238.10.38"])
  end

  it "should have valid MIT IP addresses" do
    expect(valid_mit_ip_addresses(source_text)).to eq(["18.221.23.4", "18.238.10.38"])
  end

  it "should have valid non-MIT IP addresses" do
    puts @source_text
    expect(non_mit_ip_addresses(source_text)).to eq(["127.0.0.1", "203.15.20.74"])
  end

  it "should have valid phone numbers" do
    expect(valid_phone_numbers(source_text)).to eq(["617-555-1212", "294-8438", "800-222-4700"])
  end

  it "should have valid area codes" do
    expect(area_codes(source_text)).to eq(["617", "800"])
  end

  it "should have email addresses" do
    expect(email_addresses(source_text)).to eq(["tibbon@gmail.com", "bob@example.com"])
  end

  it "should have zip codes" do
    expect(zip_codes(source_text)).to eq(["02144", "02134"])
  end

  it "should have valid colors" do
    expect(hex_colors(source_text)).to eq(["ccddee", "b1dafb", "741d0d"])
  end
end