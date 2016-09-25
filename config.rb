=begin
This file can be used to (e.g.):
- alter certain inner parts of Gollum,
- extend it with your stuff.

It is especially useful for customizing supported formats/markups. For more information and examples:
- https://github.com/gollum/gollum#config-file

=end

# enter your Ruby code here ...
sanitizer = Gollum::Sanitization.new
#sanitizer.protocols['a']['href'].concat ['ssh', 'vnc']
sanitizer.elements.concat ['figure', 'figcaption']
#sanitizer.attributes['a'].push 'target'
Precious::App.set(:wiki_options, {sanitization: sanitizer})
