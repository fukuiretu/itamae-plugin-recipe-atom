node['atom']['install_packages'].each do |package|
  execute "Install Atom packages" do
    command "apm install #{package}"
    not_if "apm list | grep -q #{package}"
  end
end
