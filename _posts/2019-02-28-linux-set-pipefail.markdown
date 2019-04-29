---
layout: post
title:  "…about 'set -o pipefail' in bash scripts."
date:   2019-02-28 12:00:00 +0100
share_text: Today I learned about 'set -o pipefail' in bash scripts.
category: linux
---
If you use `set -e` to let your bash script fail when a command fails and you have some pipes within your script, you might also want to run `set -o pipefail` as well, since it allows bash to also discover that pipes fail.

See [here][source] for more details.

[source]: http://petereisentraut.blogspot.com/2010/11/pipefail.html
