ATOM_DIR = '~/.atom'

node['atom']['configs'].each do |config|
  config_file = File.basename(config)

  execute "backup origin file #{config_file}" do
    command "cp #{ATOM_DIR}/#{config_file} #{ATOM_DIR}/#{config_file}.bk"
  end

  execute "backup origin file #{config_file}" do
    command "cp #{config} #{ATOM_DIR}"
  end
end
