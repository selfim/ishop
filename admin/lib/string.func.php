<?php
/**
 * Created by PhpStorm.
 * User: limeng
 * Date: 2017/4/20
 * Time: 9:31
 */
function createRandomString($type =1,	$length =4){
	header('content-type:text/html;charset=utf-8');
	if ($type ==1){
	    $chars =join("",range(0, 9));
	}elseif($type==2){
		$chars = join("",array_merge(range('a', 'z'),range('A', 'Z')));
	}elseif($type ==3){
		$chars = join('',array_merge(range('a', 'z'),range('A', 'Z'),range(0, 9)));
	}
	if ($length>strlen($chars)) {
		exit('字符串长度不够');
	}
	$chars =str_shuffle($chars);
	return substr($chars,0,$length);
}
