# itamae-plugin-recipe-atom

Plugin to support the [Atom](https://atom.io/) for [Itamae](https://github.com/itamae-kitchen/itamae)



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-atom'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-atom



## Usage

### Recipe

##### your recipe example
```ruby
include_recipe 'atom::config'
include_recipe 'atom::package'
```

### Node
case was an example the yaml

##### your node example
```yaml
atom:
  install_packages:
    - monokai
    - dash
    - file-icons
    - highlight-selected
    - highlight-column
    - highlight-line
    - japanese-wrap
    - recent-files
    - sublime-style-column-selection
    - ask-stack
    - show-ideographic-space
    - jumpy
    - symbols-tree-view
    - autocomplete-plus
    - autocomplete-emojis
    - autocomplete-snippets
    - autocomplete-paths
    - linter
    - linter-coffeelint
    - linter-erb
    - linter-rubocop
    - linter-haml
    - linter-ruby
    - linter-shellcheck
    - git-grep
    - git-diff
    - git-log
    - git-control
    - term2
    - script
    - rspec
    - web-view
    - serverspec-snippets
    - language-rspec
    - vim-mode
  configs:
    config: /path/to/config.cson
    keymap: /path/to/keymap.cson
    snippets: /path/to/snippets.cson
    styles: /path/to/styles.less
```

##### Description of Option
- **install_packages** : run the `apm install XXXXX`. To specify the packages you want to add an array
- **configs**
  - **config**: `~/.atom/config.cson` replace the specified file.Original file back up as `~/.atom/config.cson.bk`.
  - **keymap**: `~/.atom/keymap.cson` replace the specified file.Original file back up as `~/.atom/keymap.cson.bk`.
  - **snippets**: `~/.atom/snippets.cson` replace the specified file.Original file back up as `~/.atom/snippets.cson.bk`.
  - **styles**: `~/.atom/styles.less` replace the specified file.Original file back up as `~/.atom/styles.less.bk`.



## Contributing

1. Fork it ( https://github.com/fukuiretu/itamae-plugin-recipe-atom/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
