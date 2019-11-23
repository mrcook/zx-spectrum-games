# ZX Spectrum Game Disassemblies

A collection of classic 1980's ZX Spectrum games, disassembled, annotated,
and provided here in the Skoolkit `.skool` format.

**The Why**

Once upon a tyme, I was interested in reading the _Tir Na Nog_ source code, as
annotate by Lunysoft, however, this was only available as a set of Skoolkit
`skool2html.py` generated HTML pages. Although these pages are nice to look at,
they are not very easy for reading the source code.

Over the years I've encountered a number of disassemblies provided in the same
format such as _Knight Tyme_ and _Spellbound_.

So, one Saturday toward the end of 2019 I decided to have a little fun with a
_weekend project_ and write a small tool ([html2skool](https://github.com/mrcook/skoolkit-html2skool))
to reverse these HTML pages back to a Skoolkit `.skool` project file.  

_Ask forgiveness, not permission._

This collection is made from the excellent work of other people. If you are
one of these, and wish me to remove the included disassembly, please let me
know. My email is available in the `git log`.

* [Lunysoft](http://www.luny.co.uk)
  - Tir Na Nog
  - Dun Darach
* [Philip Anderson](http://community.dur.ac.uk/philip.anderson/disassemblies/)
  - Knight Tyme (48K)
  - Spellbound (48K)
  - Stormbringer (48k)
  - Through The Trap Door


## General Skoolkit Usage

Visit [Skoolkit](https://skoolkit.ca/) and read the docs.

You'll need to the original `.tzx` tape image, easily found on the inter-webs.


## Related Tools

If you're a **SublimeText** editor user, I've created syntax highlighting
plugins to make viewing `.skool` and `.asm` files a little nicer:

* [SkoolkitZ80](https://packagecontrol.io/packages/SkoolkitZ80) syntax package.
* [Z80 Assembly](https://packagecontrol.io/packages/Z80%20Assembly) syntax package.

### Working with TZX Files

If you have a need to read the metadata found in Spectrum `.tzx` or `.tap`
files, checkout my [`tzxit`](https://github.com/mrcook/tzxit) terminal app,
which happens to be written in the Go language.

Cheers,  
Michael Cook