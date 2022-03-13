#!/bin/sh
# Big ol file of K8s aliases cause I'm lazy. This list only consists of the commands I use commonly and lots of others are missing.
#
# usage: source ./kubectl.aliases.sh
#
# A non-exhaustive set of actions:
#    - apply (a)
#    - config (conf)
#    - describe (d)
#    - delete (del)
#    - execute (ex)
#    - get (g)
#    - logs (l)
#    - run (r)
#    - top (t)
#
#A non-exhaustive set of resources:
#    - config (c)
#    - deployment (d)
#    - namespace (ns)
#    - node (n)
#    - pod (p)
#    - service (s)
#
# Below are aliases that stich these actions and resources together as a command.

alias k="kubectl";

###########
# ACTIONS #
###########
alias kaf="k apply -f";
alias kconf="k config"
alias kd="k describe";
alias kdel="k delete";
alias kex="k exec";
alias kexit="k exec -it"
alias kg="k get";
alias kl="k logs";
alias klf="k logs -f";
alias krun="k run";
alias kt="k top";

##########
# CONFIG #
##########
alias kconfcc="kconf current-context"
alias kconfv="kconf view";
alias kconfs="kconf set";
alias kconfsc="kconf set-context";
alias kconfu="kconf unset";

##############
# DEPLOYMENT #
##############
alias kdd="kd deployment";
alias kdeld="kdel deplyoment";
alias kgd="kg deployment -o wide";

#############
# NAMESPACE #
#############
alias ksetns="kconfsc --namespace"; # Set namespace for all k8s commands
alias kgetns="kconfcc | grep namespace"; # Get namespace all k8s commands are using

########
# NODE #
########
alias kdn="kd node";
alias kgn="kg node -o wide";
alias ktn="kt node";

#######
# POD #
#######
alias kdp="kd pod";
alias kdelp="kdel pod";
alias kgp="kg pods -o wide";
alias ktp="kt pod";

###########
# SERVICE #
###########
alias kds="kcd service";
alias kdels="kdel service";
alias kgs="kg service -o wide";
