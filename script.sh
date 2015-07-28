#!/usr/bin/bash
declare -A RUTAS=( 
	["photopia"]="/opt/lampp/htdocs/photopia" 
	["dipro"]="/opt/lampp/htdocs/dipro" 
	["indicadores"]="/opt/lampp/htdocs/indicadores" 
	["geo"]="/opt/lampp/htdocs/geourbana" 
	["kassani"]="/opt/lampp/htdocs/kassani" 
	["info"]="/home/dinoxindustrial/Documents/Projects/op/infosheets_web" 
	["agro"]="/home/dinoxindustrial/Documents/Projects/op/agroreportes_web" 
	["cluster"]="/opt/lampp/htdocs/red_cluster" 
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
