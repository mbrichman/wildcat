# You need a config.rb that looks like this, but with your own values,
# if you're going to run the server (local or remote).
# Your config.rb should not be checked into your repo.
# Note that the .gitignore in this repo ignores config.rb.

require_relative 'wildcat_constants'

# Important to know in a couple places.
ENV[ENV_KEY_RUNNING_AS_SERVER] = 'true'

# This is the path to the folder that contains one or website — the source (Markdown files, etc.).

ENV[ENV_KEY_WEBSITES_FOLDER] = '/path/to/websites/'

ENV[ENV_KEY_USERNAME] = 'myname'

# Note: the hashed password is generated by Argon2. You’ll need that gem.
# Then, in irb, do this:
#
# require 'argon2'
# Argon2::Password.create("some password you want")
#
# Then use that result for the hashed password.

ENV[ENV_KEY_HASHED_PASSWORD] = '$argon2i$v=19$m=65536,t=2,p=1$wEsaUsxQ2I4juWWg0UGBmQ$AZnl0VCw5Ah/Uw+sMIFNfb4bdciEyVrWFdnt6EaONO8'
