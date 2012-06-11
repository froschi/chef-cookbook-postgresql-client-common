packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    postgresql-client-common
  /
when "precise"
  packages |= %w/
    postgresql-client-common
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
