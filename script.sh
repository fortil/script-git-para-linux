#!/usr/bin/bash
declare -A RUTAS=( 
	["nombre"]="ruta/a/nombre" 
	["otronombre"]="ruta/a/otronombre" 
	)

function push
{
	eval cd $1 &&
	git add . &&
	git commit -m $2 &&
	git push
	echo "*******PUSH*******"
}
function cmd
{
	eval cd $1 &&
	git add . &&
	echo "*******CMD*******"
}
function pull
{
	eval cd $1 &&
	git pull
	echo "*******PULL*******"
}
function status
{
	eval cd $1 &&
	git status
	echo "*******STATUS*******"
}
function delete
{
	eval cd $1 &&
	variable="git rm $(git ls-files --deleted)"
	eval $variable
	echo "*******ALL FILES DELETED*******"
}

$1 ${RUTAS["$2"]} $3
