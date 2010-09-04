Maintainers Index
=================

This document cross references Python Modules (first table) and platforms
(second table) with the Tracker user names of people who are experts
and/or resources for that module or platform.  This list is intended
to be used by issue submitters, issue triage people, and other issue
participants to find people to add to the nosy list or to contact
directly by email for help and decisions on feature requests and bug
fixes.  People on this list may be asked to render final judgement on a
feature or bug.  If no active maintainer is listed for a given module,
then questionable changes should go to python-dev, while any other issues
can and should be decided by any committer.

The last part of this document is a third table, listing broader topic
areas in which various people have expertise.  These people can also
be contacted for help, opinions, and decisions when issues involve
their areas.

If a listed maintainer does not respond to requests for comment for an
extended period (three weeks or more), they should be marked as inactive
in this list by placing the word 'inactive' in parenthesis behind their
tracker id.  They are of course free to remove that inactive mark at
any time.

Committers should update this table as their areas of expertise widen.
New topics may be added to the third table at will.

The existence of this list is not meant to indicate that these people
*must* be contacted for decisions; it is, rather, a resource to be used
by non-committers to find responsible parties, and by committers who do
not feel qualified to make a decision in a particular context.

See also `PEP 291`_ and `PEP 360`_ for information about certain modules
with special rules.

.. _`PEP 291`: http://www.python.org/dev/peps/pep-0291/
.. _`PEP 360`: http://www.python.org/dev/peps/pep-0360/


==================  ===========
Module              Maintainers
==================  ===========
__future__
__main__            gvanrossum
_dummy_thread       brett.cannon
_thread
abc
aifc                r.david.murray
argparse            bethard
array
ast
asynchat            josiahcarlson
asyncore            josiahcarlson
atexit
audioop
base64
bdb
binascii
binhex
bisect              rhettinger
builtins
bz2
calendar
cgi
cgitb
chunk
cmath               mark.dickinson
cmd
code
codecs              lemburg, doerwalter
codeop
collections         rhettinger
colorsys
compileall
configparser
contextlib
copy                alexandre.vassalotti
copyreg             alexandre.vassalotti
cProfile
crypt
csv
ctypes              theller
curses              andrew.kuchling
datetime
dbm
decimal             facundobatista, rhettinger, mark.dickinson
difflib
dis
distutils           tarek
doctest             tim_one (inactive)
dummy_threading     brett.cannon
email               barry
encodings           lemburg, loewis
errno
exceptions
fcntl
filecmp
fileinput
fnmatch
formatter
fpectl
fractions           mark.dickinson
ftplib
functools
gc                  pitrou
getopt
getpass
gettext             loewis
glob
grp
gzip
hashlib
heapq               rhettinger
hmac
html
http
idlelib
imaplib
imghdr
imp
importlib           brett.cannon
inspect
io                  pitrou, benjamin.peterson
itertools           rhettinger
json                bob.ippolito (inactive)
keyword
lib2to3             benjamin.peterson
linecache
locale              loewis, lemburg
logging             vsajip
macpath
mailbox             andrew.kuchling
mailcap
marshal
math                mark.dickinson
mimetypes
mmap
modulefinder        theller, jvr
msilib              loewis
msvcrt
multiprocessing     jnoller
netrc
nis
nntplib
numbers
operator
optparse            aronacher
os                  loewis
ossaudiodev
parser
pdb
pickle              alexandre.vassalotti, pitrou
pickletools         alexandre.vassalotti
pipes
pkgutil
platform            lemburg
plistlib
poplib
posix
pprint              fdrake
pstats
pty
pwd
py_compile
pybench             lemburg, pitrou
pyclbr
pydoc
queue
quopri
random              rhettinger
re                  effbot (inactive), pitrou
readline
reprlib
resource
rlcompleter
runpy               ncoghlan
sched
select
shelve
shlex
shutil              tarek
signal
site
smtpd
smtplib
sndhdr
socket
socketserver
spwd
sqlite3             ghaering
ssl                 janssen
stat
string
stringprep
struct              mark.dickinson
subprocess          astrand (inactive)
sunau
symbol
symtable            benjamin.peterson
sys
syslog
tabnanny            tim_one
tarfile             lars.gustaebel
telnetlib
tempfile
termios
test
textwrap
threading
time                brett.cannon
timeit
tkinter             gpolo
token               georg.brandl
tokenize
trace
traceback           georg.brandl
tty
turtle              gregorlingl
types
unicodedata         loewis, lemburg, ezio.melotti
unittest            michael.foord
urllib              orsenthil
uu
uuid
warnings            brett.cannon
wave
weakref             fdrake
webbrowser          georg.brandl
winreg
winsound            effbot (inactive)
wsgiref             pje
xdrlib
xml                 loewis
xml.etree           effbot (inactive)
xmlrpc              loewis
zipfile
zipimport
zlib
==================  ===========


==================  ===========
Tool                Maintainers
------------------  -----------
pybench             lemburg


==================  ===========
Platform            Maintainers
------------------  -----------
AIX
Cygwin              jlt63
FreeBSD
Linux
Mac                 ronaldoussoren
NetBSD1
OS2/EMX             aimacintyre
Solaris
HP-UX
==================  ===========


==================  ===========
Interest Area       Maintainers
------------------  -----------
algorithms
ast/compiler        ncoghlan, benjamin.peterson, brett.cannon, georg.brandl
autoconf/makefiles
bsd
buildbots
bytecode            pitrou
data formats        mark.dickinson, georg.brandl
database            lemburg
documentation       georg.brandl, ezio.melotti
GUI
i18n                lemburg
import machinery    brett.cannon, ncoghlan
io                  pitrou, benjamin.peterson
locale              lemburg, loewis
mathematics         mark.dickinson, eric.smith, lemburg
memory management   tim_one, lemburg
networking
packaging           tarek, lemburg
py3 transition      benjamin.peterson
release management  tarek, lemburg, benjamin.peterson, barry, loewis,
                    gvanrossum, anthonybaxter
str.format          eric.smith
time and dates      lemburg
testing             michael.foord, pitrou
threads
tracker
unicode             lemburg
version control
windows
==================  ===========
