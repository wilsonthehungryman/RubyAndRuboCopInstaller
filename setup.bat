@ECHO OFF
ECHO Installing Ruby 2.3.3
.\rubyinstaller-2.3.3-x64.exe
ECHO Installing DevKit
.\DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe

C:
cd .\RubyDevKit
C:\Ruby23-x64\bin\ruby.exe dk.rb init
C:\Ruby23-x64\bin\ruby.exe dk.rb install

ECHO Installing RuboCop and Rails
C:\Ruby23-x64\bin\gem install rubocop rails

ECHO Installing Atom Packages
REM Community Packages (28) C:\Users\Wilson\.atom\packages
call apm install atom-alignment
call apm install atom-autocomplete-php
call apm install atom-typescript
call apm install autocomplete-html-entities
call apm install autocomplete-php
call apm install autocomplete-xml
call apm install file-icons
call apm install javascript-snippets
call apm install js-extras
call apm install language-haml
call apm install language-js-specs
call apm install language-slim
call apm install line-ending-selector-unix
call apm install linter
call apm install linter-coffeelint
call apm install linter-haml
call apm install linter-rubocop
call apm install linter-ruby
call apm install linter-scss-lint
call apm install linter-slim
call apm install rubo-format
call apm install rubocop-auto-correct
call apm install ruby-slim
call apm install turbo-javascript
call apm install xml-tools

atom
