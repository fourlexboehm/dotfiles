# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization
PATH=/home/lex/.cargo/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
export PATH HOME TERM

if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
	ENV=$HOME/.kshrc		# set ENV if there is an rc file
 	export ENV

