---
layout: post
title:  "…that you can and should use localeCompare to sort strings alphabetically."
date:   2019-03-14 16:20:00 +0100
share_text: Today I learned that you can and should use localeCompare to sort strings alphabetically.
category: javasscript
---
Imagine you want to sort some German strings alphabetically. (Take this for example:)

```js
const countries = [
  'Deutschland',
  'Ägypten',
  'Norwegen',
  'Albanien'
]
```

If you would sort them using `Array.sort()` method, you will get this result, which might not be what you want:

```js
countries.sort()
// results in: ['Albanien', 'Deutschland', 'Norwegen', 'Ägypten']
```

But if you the `.localeCompare` method that is defined on any instance of `String` you can sort the string with a more locale aware algorithm. Try this:

```js
countries.sort((a, b) => a.localeCompare(b))
// results in: ['Ägypten', 'Albanien', 'Deutschland', 'Norwegen']
```

The `.localeCompare` method takes even more options (in most browsers), to adjust its comparing algorithm. You can read all about it on the fabulous [MDN documentation][localeCompare] about it.

[localeCompare]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/localeCompare
