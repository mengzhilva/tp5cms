<?php

function kspx($arr){
	//快速排序
	$num = count($arr);
	$jz = $arr[$num-1];
	if($num<=1){
		return $arr;
	}else{
		$arrs = array();
		$arrss = array();
		for($i=0;$i<$num-1;$i++){
			if($arr[$i]>$jz){
				$arrs[] = $arr[$i];
			}else{
				$arrss[] = $arr[$i];
			}
		}
		$x = array();
		$d = array();
		if($arrs){
			$d = kspx($arrs);
		}
		if($arrss){
			$x = kspx($arrss);
		}
		return array_merge($d,array($jz),$x);
	}
}
    	$arr = array(8,5,6,1,2,3,4,15,6,31,25,7);
    	$res = kspx($arr);
    	var_dump($res);