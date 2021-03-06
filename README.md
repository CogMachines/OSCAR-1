---
author: John L. Pollock
maintainer: Chun Tian (binghe)
---

# The OSCAR Project

Official website: http://johnpollock.us/ftp/OSCAR-web-page/oscar.html

## Original development platform
- Macintosh Common Lisp 4.2 (on PPC/Mac OS X)

## Common Lisp platforms confirmed working
- Macintosh Common Lisp (RMCL) 5.2, 6.0
- LispWorks 6.1, 7.0
- CMU Common Lisp 21b
- SBCL 1.3.19
- Clozure CL 1.11

## To load OSCAR (using ASDF)
- Add OSCAR's directory into ASDF's *central-registry*
- Start Common Lisp REPL
- Run the following command :
`(asdf:load-system :oscar)`

NOTE: if you're also using MCL, before calling ASDF please change the value of `oscar-pathname` at the end of `package.lisp` to your absolute path of OSCAR home pathname, in Mac OS 9 classic format.

## To run OSCAR's graphics interface on MCL
- Change current Lisp package to OSCAR: `(in-package :oscar)` or `(in-package "OSCAR")`
- Run `(initialize-graphics)`

## How to run tests
- Manually load 2 more Lisp files (in same order as below) without compilation:
 1. Run `(load #p"OSCAR:rules2.lisp")`,
 2. Run `(load #p"OSCAR:Combined-problems.lisp")` or `(load #p"OSCAR:legal-reasoning.lisp")`,
- Change current Lisp package to OSCAR
- Run `(test n)` (`n` is the problem number) or just `(test)`

## How to run simulations (untested)
- Run `(load #p"OSCAR:Perception-Causes_3-31.lisp")`
- Run `(load #p"OSCAR:PC-examples_3-31.lisp")`
