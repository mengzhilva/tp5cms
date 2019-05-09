<?php
namespace app\home\controller;

use think\Db;
use think\Request;

class Article extends Base
{
    public function index()
    {
		$where = array();
		$pagesize = 20;
		$request = Request::instance();
		$data = $request->param();
		$search = $data['keyword'];
    	$orderby = 'id desc';
    	$classname = '公司动态';
    	$class = $data['id'];
    	if($class){
    		$where['class_id'] = $class;
    		$classname = Db::name('article_class')->where('id='.$class)->find();
    		$classname = $classname['name'];
    	}
    	$list = Db::name('article')->where($where)->order($orderby)->paginate($pagesize);;
		$page = $list->render();
		$this->assign('page', $page);
    	$this->assign('list',$list);
		$this->assign('classname', $classname);
    	
		return view('/Article/index');
    }
    public function info()
    {
		$request = Request::instance();
		$data = $request->param();
    	$id = $data['id'];
    	$info = Db::name('article')->where('id='.$id)->find();
		$this->assign('info', $info);

		$classname = Db::name('article_class')->where('id='.$info['class_id'])->find();
		$classname = $classname['name'];
		$this->assign('classname', $classname);
		//最新新闻
    	$news = Db::name('article')->order('id desc')->limit(3)->select();
    	$this->assign('news',$news);
    	$newshot = Db::name('article')->order('hits desc')->limit(3)->select();
    	$this->assign('newshot',$newshot);
		return view('/Article/info');
    }

    public function infody()
    {
    	$request = Request::instance();
    	$data = $request->param();
    	$id = $data['id'];
    	$info = Db::name('article_dy')->where('id='.$id)->find();
    	$this->assign('info', $info);
    
    	//最新新闻
    	$news = Db::name('article')->order('id desc')->limit(3)->select();
    	$this->assign('news',$news);
    	$newshot = Db::name('article')->order('hits desc')->limit(3)->select();
    	$this->assign('newshot',$newshot);
    	return view('/Article/infody');
    }
    
}
