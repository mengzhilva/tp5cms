<?php
namespace app\home\controller;

use think\Db;
use think\Request;
use think\Session;

class Base extends \think\Controller
{

	public function _initialize()
	{
		$menu = Db::name('menu')->where('status=1 and parent_id=0')->order('sort')->select();
		foreach ($menu as $k=>$v){
			$menu[$k]['son'] = Db::name('menu')->where('status=1 and parent_id='.$v['id'])->select();
		}
		$this->assign('menu',$menu);
		$web = Db::name('website')->where(array('id'=>1))->find();
		$this->assign('web',$web);
    	//产品
    	$cp1 = Db::name('article')->where('class_id=2')->limit(4)->select();
    	$this->assign('cp1',$cp1);
    	//产品
    	$cp2 = Db::name('article')->where('class_id=3')->limit(4)->select();
    	$this->assign('cp2',$cp2);
		
	}
}