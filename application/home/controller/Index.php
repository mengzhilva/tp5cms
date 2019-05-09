<?php
namespace app\home\controller;

use think\Db;

class Index extends Base
{
    public function index()
    {
    	$hdp = Db::name('hdp')->select();
    	$this->assign('hdp',$hdp);
    	//首页推荐
    	$article = Db::name('article')->where('isindex=1')->select();
    	$this->assign('article',$article);
    	//网站设置
    	$website = Db::name('website')->find();
    	$this->assign('website',$website);
    	//友情链接
    	$link = Db::name('link')->limit(6)->select();
    	$this->assign('link',$link);
    	
		return view('/Index/index');
    }
  
   
}
