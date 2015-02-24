ATOM_DIR = '~/.atom'

%W(
  config
  keymap
  snippets
  styles
).each do |v|
  from_config_file_path = node[:atom][:configs][v]
  next if from_config_file_path.nil?

  config_file_name = v == 'snippets' ? "#{v}.css" : "#{v}.cson"

  execute "backup origin file #{config_file}" do
    command "cp #{ATOM_DIR}/#{config_file_name} #{ATOM_DIR}/#{config_file_name}.bk"
  end


  execute "setting #{config_file_name}" do
    command "cp #{from_config_file_path} #{ATOM_DIR}/#{config_file_name}"
  end
end
